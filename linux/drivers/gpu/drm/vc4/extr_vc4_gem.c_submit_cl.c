
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int V3D_CTNCA (int ) ;
 int V3D_CTNEA (int ) ;
 int V3D_WRITE (int ,int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void
submit_cl(struct drm_device *dev, uint32_t thread, uint32_t start, uint32_t end)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);




 V3D_WRITE(V3D_CTNCA(thread), start);
 V3D_WRITE(V3D_CTNEA(thread), end);
}
