
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int ver; } ;


 int V3D_CORE_WRITE (int,int ,int ) ;
 int V3D_CTL_L2TFLEND ;
 int V3D_CTL_L2TFLSTA ;
 int V3D_CTL_MISCCFG ;
 int V3D_MISCCFG_OVRTMUOUT ;

__attribute__((used)) static void
v3d_init_core(struct v3d_dev *v3d, int core)
{






 if (v3d->ver < 40)
  V3D_CORE_WRITE(core, V3D_CTL_MISCCFG, V3D_MISCCFG_OVRTMUOUT);




 V3D_CORE_WRITE(core, V3D_CTL_L2TFLSTA, 0);
 V3D_CORE_WRITE(core, V3D_CTL_L2TFLEND, ~0);
}
