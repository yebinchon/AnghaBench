
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {int dummy; } ;


 int CQC_VFT ;
 int SQC_VFT ;
 int qm_set_vft_common (struct hisi_qm*,int,int ,int ,int ) ;

__attribute__((used)) static int qm_set_sqc_cqc_vft(struct hisi_qm *qm, u32 fun_num, u32 base,
         u32 number)
{
 int ret, i;

 for (i = SQC_VFT; i <= CQC_VFT; i++) {
  ret = qm_set_vft_common(qm, i, fun_num, base, number);
  if (ret)
   return ret;
 }

 return 0;
}
