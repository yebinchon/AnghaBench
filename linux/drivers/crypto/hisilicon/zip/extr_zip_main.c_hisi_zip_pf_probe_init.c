
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_zip_ctrl {struct hisi_zip* hisi_zip; } ;
struct hisi_qm {int ver; int ctrl_qp_num; TYPE_1__* pdev; } ;
struct hisi_zip {struct hisi_zip_ctrl* ctrl; struct hisi_qm qm; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZIP_QUEUE_NUM_V1 ;
 int HZIP_QUEUE_NUM_V2 ;


 struct hisi_zip_ctrl* devm_kzalloc (int *,int,int ) ;
 int hisi_zip_debug_regs_clear (struct hisi_zip*) ;
 int hisi_zip_hw_error_init (struct hisi_zip*) ;
 int hisi_zip_set_user_domain_and_cache (struct hisi_zip*) ;

__attribute__((used)) static int hisi_zip_pf_probe_init(struct hisi_zip *hisi_zip)
{
 struct hisi_qm *qm = &hisi_zip->qm;
 struct hisi_zip_ctrl *ctrl;

 ctrl = devm_kzalloc(&qm->pdev->dev, sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  return -ENOMEM;

 hisi_zip->ctrl = ctrl;
 ctrl->hisi_zip = hisi_zip;

 switch (qm->ver) {
 case 129:
  qm->ctrl_qp_num = HZIP_QUEUE_NUM_V1;
  break;

 case 128:
  qm->ctrl_qp_num = HZIP_QUEUE_NUM_V2;
  break;

 default:
  return -EINVAL;
 }

 hisi_zip_set_user_domain_and_cache(hisi_zip);
 hisi_zip_hw_error_init(hisi_zip);
 hisi_zip_debug_regs_clear(hisi_zip);

 return 0;
}
