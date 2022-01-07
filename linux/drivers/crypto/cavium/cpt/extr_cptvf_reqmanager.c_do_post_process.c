
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cpt_vf {struct pci_dev* pdev; } ;
struct cpt_info_buffer {int dummy; } ;


 int dev_err (int *,char*) ;
 int do_request_cleanup (struct cpt_vf*,struct cpt_info_buffer*) ;

__attribute__((used)) static void do_post_process(struct cpt_vf *cptvf, struct cpt_info_buffer *info)
{
 struct pci_dev *pdev = cptvf->pdev;

 if (!info) {
  dev_err(&pdev->dev, "incorrect cpt_info_buffer for post processing\n");
  return;
 }

 do_request_cleanup(cptvf, info);
}
