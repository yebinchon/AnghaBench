
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct hfi1_pportdata {int actual_vls_operational; int vls_operational; scalar_t__ port; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;
struct buffer_control {scalar_t__ overall_shared_limit; TYPE_1__* vl; } ;
typedef int lowering_dedicated ;
typedef int changing ;
struct TYPE_2__ {scalar_t__ dedicated; scalar_t__ shared; } ;


 int NUM_USABLE_VLS ;
 int OPA_MAX_VLS ;
 int SEND_CM_CREDIT_USED_STATUS_VL0_RETURN_CREDIT_STATUS_SMASK ;
 int SEND_CM_CREDIT_USED_STATUS_VL15_RETURN_CREDIT_STATUS_SMASK ;
 int SEND_CM_CREDIT_USED_STATUS_VL1_RETURN_CREDIT_STATUS_SMASK ;
 int SEND_CM_CREDIT_USED_STATUS_VL2_RETURN_CREDIT_STATUS_SMASK ;
 int SEND_CM_CREDIT_USED_STATUS_VL3_RETURN_CREDIT_STATUS_SMASK ;
 int SEND_CM_CREDIT_USED_STATUS_VL4_RETURN_CREDIT_STATUS_SMASK ;
 int SEND_CM_CREDIT_USED_STATUS_VL5_RETURN_CREDIT_STATUS_SMASK ;
 int SEND_CM_CREDIT_USED_STATUS_VL6_RETURN_CREDIT_STATUS_SMASK ;
 int SEND_CM_CREDIT_USED_STATUS_VL7_RETURN_CREDIT_STATUS_SMASK ;
 int TXE_NUM_DATA_VL ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int get_buffer_control (struct hfi1_devdata*,struct buffer_control*,scalar_t__*) ;
 scalar_t__ is_ax (struct hfi1_devdata*) ;
 int memset (int*,int ,int) ;
 int nonzero_msg (struct hfi1_devdata*,int,char*,scalar_t__) ;
 int pio_map_init (struct hfi1_devdata*,scalar_t__,int,int *) ;
 int sdma_map_init (struct hfi1_devdata*,scalar_t__,int,int *) ;
 int set_global_limit (struct hfi1_devdata*,scalar_t__) ;
 int set_global_shared (struct hfi1_devdata*,scalar_t__) ;
 int set_vl_dedicated (struct hfi1_devdata*,int,scalar_t__) ;
 int set_vl_shared (struct hfi1_devdata*,int,scalar_t__) ;
 scalar_t__ valid_vl (int) ;
 int wait_for_vl_status_clear (struct hfi1_devdata*,int const,char*) ;

int set_buffer_control(struct hfi1_pportdata *ppd,
         struct buffer_control *new_bc)
{
 struct hfi1_devdata *dd = ppd->dd;
 u64 changing_mask, ld_mask, stat_mask;
 int change_count;
 int i, use_all_mask;
 int this_shared_changing;
 int vl_count = 0, ret;




 int any_shared_limit_changing;
 struct buffer_control cur_bc;
 u8 changing[OPA_MAX_VLS];
 u8 lowering_dedicated[OPA_MAX_VLS];
 u16 cur_total;
 u32 new_total = 0;
 const u64 all_mask =
 SEND_CM_CREDIT_USED_STATUS_VL0_RETURN_CREDIT_STATUS_SMASK
  | SEND_CM_CREDIT_USED_STATUS_VL1_RETURN_CREDIT_STATUS_SMASK
  | SEND_CM_CREDIT_USED_STATUS_VL2_RETURN_CREDIT_STATUS_SMASK
  | SEND_CM_CREDIT_USED_STATUS_VL3_RETURN_CREDIT_STATUS_SMASK
  | SEND_CM_CREDIT_USED_STATUS_VL4_RETURN_CREDIT_STATUS_SMASK
  | SEND_CM_CREDIT_USED_STATUS_VL5_RETURN_CREDIT_STATUS_SMASK
  | SEND_CM_CREDIT_USED_STATUS_VL6_RETURN_CREDIT_STATUS_SMASK
  | SEND_CM_CREDIT_USED_STATUS_VL7_RETURN_CREDIT_STATUS_SMASK
  | SEND_CM_CREDIT_USED_STATUS_VL15_RETURN_CREDIT_STATUS_SMASK;





 for (i = 0; i < OPA_MAX_VLS; i++) {
  if (((i) < TXE_NUM_DATA_VL || (i) == 15)) {
   new_total += be16_to_cpu(new_bc->vl[i].dedicated);
   continue;
  }
  nonzero_msg(dd, i, "dedicated",
       be16_to_cpu(new_bc->vl[i].dedicated));
  nonzero_msg(dd, i, "shared",
       be16_to_cpu(new_bc->vl[i].shared));
  new_bc->vl[i].dedicated = 0;
  new_bc->vl[i].shared = 0;
 }
 new_total += be16_to_cpu(new_bc->overall_shared_limit);


 get_buffer_control(dd, &cur_bc, &cur_total);




 memset(changing, 0, sizeof(changing));
 memset(lowering_dedicated, 0, sizeof(lowering_dedicated));




 stat_mask =
  SEND_CM_CREDIT_USED_STATUS_VL0_RETURN_CREDIT_STATUS_SMASK;
 changing_mask = 0;
 ld_mask = 0;
 change_count = 0;
 any_shared_limit_changing = 0;
 for (i = 0; i < 16; i++, stat_mask <<= 1) {
  if (!((i) < TXE_NUM_DATA_VL || (i) == 15))
   continue;
  this_shared_changing = new_bc->vl[i].shared
      != cur_bc.vl[i].shared;
  if (this_shared_changing)
   any_shared_limit_changing = 1;
  if (new_bc->vl[i].dedicated != cur_bc.vl[i].dedicated ||
      this_shared_changing) {
   changing[i] = 1;
   changing_mask |= stat_mask;
   change_count++;
  }
  if (be16_to_cpu(new_bc->vl[i].dedicated) <
     be16_to_cpu(cur_bc.vl[i].dedicated)) {
   lowering_dedicated[i] = 1;
   ld_mask |= stat_mask;
  }
 }


 if (new_total > cur_total)
  set_global_limit(dd, new_total);




 use_all_mask = 0;
 if ((be16_to_cpu(new_bc->overall_shared_limit) <
      be16_to_cpu(cur_bc.overall_shared_limit)) ||
     (is_ax(dd) && any_shared_limit_changing)) {
  set_global_shared(dd, 0);
  cur_bc.overall_shared_limit = 0;
  use_all_mask = 1;
 }

 for (i = 0; i < 16; i++) {
  if (!((i) < TXE_NUM_DATA_VL || (i) == 15))
   continue;

  if (changing[i]) {
   set_vl_shared(dd, i, 0);
   cur_bc.vl[i].shared = 0;
  }
 }

 wait_for_vl_status_clear(dd, use_all_mask ? all_mask : changing_mask,
     "shared");

 if (change_count > 0) {
  for (i = 0; i < 16; i++) {
   if (!((i) < TXE_NUM_DATA_VL || (i) == 15))
    continue;

   if (lowering_dedicated[i]) {
    set_vl_dedicated(dd, i,
       be16_to_cpu(new_bc->
            vl[i].dedicated));
    cur_bc.vl[i].dedicated =
      new_bc->vl[i].dedicated;
   }
  }

  wait_for_vl_status_clear(dd, ld_mask, "dedicated");


  for (i = 0; i < 16; i++) {
   if (!((i) < TXE_NUM_DATA_VL || (i) == 15))
    continue;

   if (be16_to_cpu(new_bc->vl[i].dedicated) >
     be16_to_cpu(cur_bc.vl[i].dedicated))
    set_vl_dedicated(dd, i,
       be16_to_cpu(new_bc->
            vl[i].dedicated));
  }
 }


 for (i = 0; i < 16; i++) {
  if (!((i) < TXE_NUM_DATA_VL || (i) == 15))
   continue;

  if (be16_to_cpu(new_bc->vl[i].shared) >
    be16_to_cpu(cur_bc.vl[i].shared))
   set_vl_shared(dd, i, be16_to_cpu(new_bc->vl[i].shared));
 }


 if (be16_to_cpu(new_bc->overall_shared_limit) >
     be16_to_cpu(cur_bc.overall_shared_limit))
  set_global_shared(dd,
      be16_to_cpu(new_bc->overall_shared_limit));


 if (new_total < cur_total)
  set_global_limit(dd, new_total);





 if (change_count > 0) {
  for (i = 0; i < TXE_NUM_DATA_VL; i++)
   if (be16_to_cpu(new_bc->vl[i].dedicated) > 0 ||
       be16_to_cpu(new_bc->vl[i].shared) > 0)
    vl_count++;
  ppd->actual_vls_operational = vl_count;
  ret = sdma_map_init(dd, ppd->port - 1, vl_count ?
        ppd->actual_vls_operational :
        ppd->vls_operational,
        ((void*)0));
  if (ret == 0)
   ret = pio_map_init(dd, ppd->port - 1, vl_count ?
        ppd->actual_vls_operational :
        ppd->vls_operational, ((void*)0));
  if (ret)
   return ret;
 }
 return 0;
}
