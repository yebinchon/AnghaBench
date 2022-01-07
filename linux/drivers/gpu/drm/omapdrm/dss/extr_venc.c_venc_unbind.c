
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_device {int debugfs; } ;
struct device {int dummy; } ;


 struct venc_device* dev_get_drvdata (struct device*) ;
 int dss_debugfs_remove_file (int ) ;

__attribute__((used)) static void venc_unbind(struct device *dev, struct device *master, void *data)
{
 struct venc_device *venc = dev_get_drvdata(dev);

 dss_debugfs_remove_file(venc->debugfs);
}
