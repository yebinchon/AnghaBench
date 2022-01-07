
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {TYPE_1__* csdev; } ;
struct etr_buf {int mode; int refcount; scalar_t__ size; } ;
struct device {int parent; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 struct etr_buf* ERR_PTR (int) ;
 int ETR_MODE_CATU ;
 int ETR_MODE_ETR_SG ;
 int ETR_MODE_FLAT ;
 int GFP_KERNEL ;
 scalar_t__ SZ_1M ;
 int TMC_ETR_SG ;
 int dev_dbg (struct device*,char*,unsigned long,int ) ;
 int iommu_get_domain_for_dev (int ) ;
 int kfree (struct etr_buf*) ;
 struct etr_buf* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int tmc_etr_get_catu_device (struct tmc_drvdata*) ;
 int tmc_etr_has_cap (struct tmc_drvdata*,int ) ;
 int tmc_etr_mode_alloc_buf (int ,struct tmc_drvdata*,struct etr_buf*,int,void**) ;

__attribute__((used)) static struct etr_buf *tmc_alloc_etr_buf(struct tmc_drvdata *drvdata,
      ssize_t size, int flags,
      int node, void **pages)
{
 int rc = -ENOMEM;
 bool has_etr_sg, has_iommu;
 bool has_sg, has_catu;
 struct etr_buf *etr_buf;
 struct device *dev = &drvdata->csdev->dev;

 has_etr_sg = tmc_etr_has_cap(drvdata, TMC_ETR_SG);
 has_iommu = iommu_get_domain_for_dev(dev->parent);
 has_catu = !!tmc_etr_get_catu_device(drvdata);

 has_sg = has_catu || has_etr_sg;

 etr_buf = kzalloc(sizeof(*etr_buf), GFP_KERNEL);
 if (!etr_buf)
  return ERR_PTR(-ENOMEM);

 etr_buf->size = size;
 if (!pages &&
     (!has_sg || has_iommu || size < SZ_1M))
  rc = tmc_etr_mode_alloc_buf(ETR_MODE_FLAT, drvdata,
         etr_buf, node, pages);
 if (rc && has_etr_sg)
  rc = tmc_etr_mode_alloc_buf(ETR_MODE_ETR_SG, drvdata,
         etr_buf, node, pages);
 if (rc && has_catu)
  rc = tmc_etr_mode_alloc_buf(ETR_MODE_CATU, drvdata,
         etr_buf, node, pages);
 if (rc) {
  kfree(etr_buf);
  return ERR_PTR(rc);
 }

 refcount_set(&etr_buf->refcount, 1);
 dev_dbg(dev, "allocated buffer of size %ldKB in mode %d\n",
  (unsigned long)size >> 10, etr_buf->mode);
 return etr_buf;
}
