
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl_arb_cache {int dummy; } ;
struct hfi1_pportdata {int dd; } ;


 int EINVAL ;




 int HI_PRIO_TABLE ;
 int LO_PRIO_TABLE ;
 int SEND_HIGH_PRIORITY_LIST ;
 int SEND_LOW_PRIORITY_LIST ;
 int VL_ARB_HIGH_PRIO_TABLE_SIZE ;
 int VL_ARB_LOW_PRIO_TABLE_SIZE ;
 int set_buffer_control (struct hfi1_pportdata*,void*) ;
 int set_sc2vlnt (int ,void*) ;
 int set_vl_weights (struct hfi1_pportdata*,int ,int ,void*) ;
 struct vl_arb_cache* vl_arb_lock_cache (struct hfi1_pportdata*,int ) ;
 int vl_arb_match_cache (struct vl_arb_cache*,void*) ;
 int vl_arb_set_cache (struct vl_arb_cache*,void*) ;
 int vl_arb_unlock_cache (struct hfi1_pportdata*,int ) ;

int fm_set_table(struct hfi1_pportdata *ppd, int which, void *t)
{
 int ret = 0;
 struct vl_arb_cache *vlc;

 switch (which) {
 case 129:
  vlc = vl_arb_lock_cache(ppd, HI_PRIO_TABLE);
  if (vl_arb_match_cache(vlc, t)) {
   vl_arb_unlock_cache(ppd, HI_PRIO_TABLE);
   break;
  }
  vl_arb_set_cache(vlc, t);
  vl_arb_unlock_cache(ppd, HI_PRIO_TABLE);
  ret = set_vl_weights(ppd, SEND_HIGH_PRIORITY_LIST,
         VL_ARB_HIGH_PRIO_TABLE_SIZE, t);
  break;
 case 128:
  vlc = vl_arb_lock_cache(ppd, LO_PRIO_TABLE);
  if (vl_arb_match_cache(vlc, t)) {
   vl_arb_unlock_cache(ppd, LO_PRIO_TABLE);
   break;
  }
  vl_arb_set_cache(vlc, t);
  vl_arb_unlock_cache(ppd, LO_PRIO_TABLE);
  ret = set_vl_weights(ppd, SEND_LOW_PRIORITY_LIST,
         VL_ARB_LOW_PRIO_TABLE_SIZE, t);
  break;
 case 131:
  ret = set_buffer_control(ppd, t);
  break;
 case 130:
  set_sc2vlnt(ppd->dd, t);
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
