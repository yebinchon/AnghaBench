
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int cores; } ;


 int V3D_CORE_IRQS ;
 int V3D_CORE_WRITE (int,int ,int ) ;
 int V3D_CTL_INT_MSK_CLR ;
 int V3D_CTL_INT_MSK_SET ;
 int V3D_HUB_INT_MSK_CLR ;
 int V3D_HUB_INT_MSK_SET ;
 int V3D_HUB_IRQS ;
 int V3D_WRITE (int ,int ) ;

void
v3d_irq_enable(struct v3d_dev *v3d)
{
 int core;


 for (core = 0; core < v3d->cores; core++) {
  V3D_CORE_WRITE(core, V3D_CTL_INT_MSK_SET, ~V3D_CORE_IRQS);
  V3D_CORE_WRITE(core, V3D_CTL_INT_MSK_CLR, V3D_CORE_IRQS);
 }

 V3D_WRITE(V3D_HUB_INT_MSK_SET, ~V3D_HUB_IRQS);
 V3D_WRITE(V3D_HUB_INT_MSK_CLR, V3D_HUB_IRQS);
}
