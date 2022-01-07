
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct hfi1_devdata {int dummy; } ;
struct buffer_control {int overall_shared_limit; int * vl; } ;


 scalar_t__ SEND_CM_CREDIT_VL ;
 scalar_t__ SEND_CM_CREDIT_VL15 ;
 int SEND_CM_GLOBAL_CREDIT ;
 int SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_MASK ;
 int SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_SHIFT ;
 int SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_MASK ;
 int SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT ;
 int TXE_NUM_DATA_VL ;
 int cpu_to_be16 (int) ;
 int memset (struct buffer_control*,int ,int) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int read_one_cm_vl (struct hfi1_devdata*,scalar_t__,int *) ;

__attribute__((used)) static int get_buffer_control(struct hfi1_devdata *dd,
         struct buffer_control *bc, u16 *overall_limit)
{
 u64 reg;
 int i;


 memset(bc, 0, sizeof(*bc));


 for (i = 0; i < TXE_NUM_DATA_VL; i++)
  read_one_cm_vl(dd, SEND_CM_CREDIT_VL + (8 * i), &bc->vl[i]);


 read_one_cm_vl(dd, SEND_CM_CREDIT_VL15, &bc->vl[15]);

 reg = read_csr(dd, SEND_CM_GLOBAL_CREDIT);
 bc->overall_shared_limit = cpu_to_be16(
  (reg >> SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_SHIFT)
  & SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_MASK);
 if (overall_limit)
  *overall_limit = (reg
   >> SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT)
   & SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_MASK;
 return sizeof(struct buffer_control);
}
