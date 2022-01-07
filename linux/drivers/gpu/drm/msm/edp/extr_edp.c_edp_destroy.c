
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_edp {int * ctrl; } ;


 int msm_edp_ctrl_destroy (int *) ;
 struct msm_edp* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static void edp_destroy(struct platform_device *pdev)
{
 struct msm_edp *edp = platform_get_drvdata(pdev);

 if (!edp)
  return;

 if (edp->ctrl) {
  msm_edp_ctrl_destroy(edp->ctrl);
  edp->ctrl = ((void*)0);
 }

 platform_set_drvdata(pdev, ((void*)0));
}
