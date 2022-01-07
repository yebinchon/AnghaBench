
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int dummy; } ;


 int v3d_irq_enable (struct v3d_dev*) ;

void v3d_irq_reset(struct v3d_dev *v3d)
{
 v3d_irq_enable(v3d);
}
