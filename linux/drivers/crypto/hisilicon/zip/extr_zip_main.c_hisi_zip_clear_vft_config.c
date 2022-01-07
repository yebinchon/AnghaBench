
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_zip_ctrl {int num_vfs; } ;
struct hisi_qm {int dummy; } ;
struct hisi_zip {struct hisi_qm qm; struct hisi_zip_ctrl* ctrl; } ;


 int hisi_qm_set_vft (struct hisi_qm*,int,int ,int ) ;

__attribute__((used)) static int hisi_zip_clear_vft_config(struct hisi_zip *hisi_zip)
{
 struct hisi_zip_ctrl *ctrl = hisi_zip->ctrl;
 struct hisi_qm *qm = &hisi_zip->qm;
 u32 i, num_vfs = ctrl->num_vfs;
 int ret;

 for (i = 1; i <= num_vfs; i++) {
  ret = hisi_qm_set_vft(qm, i, 0, 0);
  if (ret)
   return ret;
 }

 ctrl->num_vfs = 0;

 return 0;
}
