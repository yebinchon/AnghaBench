
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int dummy; } ;


 int V3D_CORE_WRITE (int,int ,int) ;
 int V3D_CTL_SLCACTL ;
 int V3D_SET_FIELD (int,int ) ;
 int V3D_SLCACTL_ICC ;
 int V3D_SLCACTL_TDCCS ;
 int V3D_SLCACTL_TVCCS ;
 int V3D_SLCACTL_UCC ;

__attribute__((used)) static void
v3d_invalidate_slices(struct v3d_dev *v3d, int core)
{
 V3D_CORE_WRITE(core, V3D_CTL_SLCACTL,
         V3D_SET_FIELD(0xf, V3D_SLCACTL_TVCCS) |
         V3D_SET_FIELD(0xf, V3D_SLCACTL_TDCCS) |
         V3D_SET_FIELD(0xf, V3D_SLCACTL_UCC) |
         V3D_SET_FIELD(0xf, V3D_SLCACTL_ICC));
}
