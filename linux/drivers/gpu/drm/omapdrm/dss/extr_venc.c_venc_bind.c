
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct venc_device {int debugfs; struct dss_device* dss; } ;
struct dss_device {int dummy; } ;
struct device {int dummy; } ;


 int VENC_REV_ID ;
 int dev_dbg (struct device*,char*,scalar_t__) ;
 struct venc_device* dev_get_drvdata (struct device*) ;
 int dss_debugfs_create_file (struct dss_device*,char*,int ,struct venc_device*) ;
 struct dss_device* dss_get_device (struct device*) ;
 int venc_dump_regs ;
 int venc_read_reg (struct venc_device*,int ) ;
 int venc_runtime_get (struct venc_device*) ;
 int venc_runtime_put (struct venc_device*) ;

__attribute__((used)) static int venc_bind(struct device *dev, struct device *master, void *data)
{
 struct dss_device *dss = dss_get_device(master);
 struct venc_device *venc = dev_get_drvdata(dev);
 u8 rev_id;
 int r;

 venc->dss = dss;

 r = venc_runtime_get(venc);
 if (r)
  return r;

 rev_id = (u8)(venc_read_reg(venc, VENC_REV_ID) & 0xff);
 dev_dbg(dev, "OMAP VENC rev %d\n", rev_id);

 venc_runtime_put(venc);

 venc->debugfs = dss_debugfs_create_file(dss, "venc", venc_dump_regs,
      venc);

 return 0;
}
