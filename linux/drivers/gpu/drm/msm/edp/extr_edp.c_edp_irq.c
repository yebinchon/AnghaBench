
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_edp {int ctrl; } ;
typedef int irqreturn_t ;


 int msm_edp_ctrl_irq (int ) ;

__attribute__((used)) static irqreturn_t edp_irq(int irq, void *dev_id)
{
 struct msm_edp *edp = dev_id;


 return msm_edp_ctrl_irq(edp->ctrl);
}
