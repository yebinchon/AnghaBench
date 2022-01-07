
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_map_sg (struct device*,struct scatterlist*,int,int ) ;
 int dma_unmap_sg (struct device*,struct scatterlist*,int,int ) ;
 void* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 int sg_split (struct scatterlist*,int,int ,int,size_t*,struct scatterlist**,int*,int ) ;

__attribute__((used)) static int sec_map_and_split_sg(struct scatterlist *sgl, size_t *split_sizes,
    int steps, struct scatterlist ***splits,
    int **splits_nents,
    int sgl_len_in,
    struct device *dev)
{
 int ret, count;

 count = dma_map_sg(dev, sgl, sgl_len_in, DMA_BIDIRECTIONAL);
 if (!count)
  return -EINVAL;

 *splits = kcalloc(steps, sizeof(struct scatterlist *), GFP_KERNEL);
 if (!*splits) {
  ret = -ENOMEM;
  goto err_unmap_sg;
 }
 *splits_nents = kcalloc(steps, sizeof(int), GFP_KERNEL);
 if (!*splits_nents) {
  ret = -ENOMEM;
  goto err_free_splits;
 }


 ret = sg_split(sgl, count, 0, steps, split_sizes,
         *splits, *splits_nents, GFP_KERNEL);
 if (ret) {
  ret = -ENOMEM;
  goto err_free_splits_nents;
 }

 return 0;

err_free_splits_nents:
 kfree(*splits_nents);
err_free_splits:
 kfree(*splits);
err_unmap_sg:
 dma_unmap_sg(dev, sgl, sgl_len_in, DMA_BIDIRECTIONAL);

 return ret;
}
