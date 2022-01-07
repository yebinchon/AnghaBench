
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int V3D_VPMBASE ;
 int V3D_WRITE (int ,int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void vc4_v3d_init_hw(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);





 V3D_WRITE(V3D_VPMBASE, 0);
}
