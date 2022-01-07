
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dfl_feature_platform_data {TYPE_1__* dev; } ;
struct dfl_afu_dma_region {long length; int pages; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int mm; } ;
struct TYPE_3__ {struct device dev; } ;


 long PAGE_SHIFT ;
 int account_locked_vm (int ,long,int) ;
 TYPE_2__* current ;
 int dev_dbg (struct device*,char*,long) ;
 int kfree (int ) ;
 int put_all_pages (int ,long) ;

__attribute__((used)) static void afu_dma_unpin_pages(struct dfl_feature_platform_data *pdata,
    struct dfl_afu_dma_region *region)
{
 long npages = region->length >> PAGE_SHIFT;
 struct device *dev = &pdata->dev->dev;

 put_all_pages(region->pages, npages);
 kfree(region->pages);
 account_locked_vm(current->mm, npages, 0);

 dev_dbg(dev, "%ld pages unpinned\n", npages);
}
