
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_device {int venc_lock; } ;
struct omap_dss_device {int dummy; } ;


 int DSSDBG (char*) ;
 struct venc_device* dssdev_to_venc (struct omap_dss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int venc_power_off (struct venc_device*) ;

__attribute__((used)) static void venc_display_disable(struct omap_dss_device *dssdev)
{
 struct venc_device *venc = dssdev_to_venc(dssdev);

 DSSDBG("venc_display_disable\n");

 mutex_lock(&venc->venc_lock);

 venc_power_off(venc);

 mutex_unlock(&venc->venc_lock);
}
