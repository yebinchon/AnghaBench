
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int ptr; } ;
struct talitos_private {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int be32_to_cpu (int ) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int dma_unmap_single (struct device*,int ,int ,int) ;
 int from_talitos_ptr_len (struct talitos_ptr*,int) ;
 int has_ftr_sec1 (struct talitos_private*) ;

__attribute__((used)) static void unmap_single_talitos_ptr(struct device *dev,
         struct talitos_ptr *ptr,
         enum dma_data_direction dir)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 bool is_sec1 = has_ftr_sec1(priv);

 dma_unmap_single(dev, be32_to_cpu(ptr->ptr),
    from_talitos_ptr_len(ptr, is_sec1), dir);
}
