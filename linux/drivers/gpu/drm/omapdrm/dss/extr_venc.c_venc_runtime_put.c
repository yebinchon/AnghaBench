
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venc_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DSSDBG (char*) ;
 int ENOSYS ;
 int WARN_ON (int) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static void venc_runtime_put(struct venc_device *venc)
{
 int r;

 DSSDBG("venc_runtime_put\n");

 r = pm_runtime_put_sync(&venc->pdev->dev);
 WARN_ON(r < 0 && r != -ENOSYS);
}
