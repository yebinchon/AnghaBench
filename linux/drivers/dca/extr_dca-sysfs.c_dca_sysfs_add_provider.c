
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dca_provider {int id; struct device* cd; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct device*) ;
 int dca_class ;
 int dca_idr ;
 int dca_idr_lock ;
 struct device* device_create (int ,struct device*,int ,int *,char*,int) ;
 int idr_alloc (int *,struct dca_provider*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dca_sysfs_add_provider(struct dca_provider *dca, struct device *dev)
{
 struct device *cd;
 int ret;

 idr_preload(GFP_KERNEL);
 spin_lock(&dca_idr_lock);

 ret = idr_alloc(&dca_idr, dca, 0, 0, GFP_NOWAIT);
 if (ret >= 0)
  dca->id = ret;

 spin_unlock(&dca_idr_lock);
 idr_preload_end();
 if (ret < 0)
  return ret;

 cd = device_create(dca_class, dev, MKDEV(0, 0), ((void*)0), "dca%d", dca->id);
 if (IS_ERR(cd)) {
  spin_lock(&dca_idr_lock);
  idr_remove(&dca_idr, dca->id);
  spin_unlock(&dca_idr_lock);
  return PTR_ERR(cd);
 }
 dca->cd = cd;
 return 0;
}
