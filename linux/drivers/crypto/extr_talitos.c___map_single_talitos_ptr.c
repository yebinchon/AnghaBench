
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int dummy; } ;
struct talitos_private {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 struct talitos_private* dev_get_drvdata (struct device*) ;
 int dma_map_single_attrs (struct device*,void*,unsigned int,int,unsigned long) ;
 int has_ftr_sec1 (struct talitos_private*) ;
 int to_talitos_ptr (struct talitos_ptr*,int ,unsigned int,int) ;

__attribute__((used)) static void __map_single_talitos_ptr(struct device *dev,
         struct talitos_ptr *ptr,
         unsigned int len, void *data,
         enum dma_data_direction dir,
         unsigned long attrs)
{
 dma_addr_t dma_addr = dma_map_single_attrs(dev, data, len, dir, attrs);
 struct talitos_private *priv = dev_get_drvdata(dev);
 bool is_sec1 = has_ftr_sec1(priv);

 to_talitos_ptr(ptr, dma_addr, len, is_sec1);
}
