
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int V3D_L2CACTL ;
 int V3D_L2CACTL_L2CCLR ;
 int V3D_SLCACTL ;
 int V3D_SLCACTL_T0CC ;
 int V3D_SLCACTL_T1CC ;
 int V3D_WRITE (int ,int) ;
 int VC4_SET_FIELD (int,int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void
vc4_flush_texture_caches(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 V3D_WRITE(V3D_L2CACTL,
    V3D_L2CACTL_L2CCLR);

 V3D_WRITE(V3D_SLCACTL,
    VC4_SET_FIELD(0xf, V3D_SLCACTL_T1CC) |
    VC4_SET_FIELD(0xf, V3D_SLCACTL_T0CC));
}
