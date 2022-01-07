
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmaengine_unmap_data {int kref; } ;


 int dmaengine_unmap ;
 int kref_put (int *,int ) ;

void dmaengine_unmap_put(struct dmaengine_unmap_data *unmap)
{
 if (unmap)
  kref_put(&unmap->kref, dmaengine_unmap);
}
