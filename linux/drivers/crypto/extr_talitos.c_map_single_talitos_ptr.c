
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int __map_single_talitos_ptr (struct device*,struct talitos_ptr*,unsigned int,void*,int,int ) ;

__attribute__((used)) static void map_single_talitos_ptr(struct device *dev,
       struct talitos_ptr *ptr,
       unsigned int len, void *data,
       enum dma_data_direction dir)
{
 __map_single_talitos_ptr(dev, ptr, len, data, dir, 0);
}
