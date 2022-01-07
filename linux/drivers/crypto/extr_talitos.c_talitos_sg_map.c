
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int dummy; } ;
struct talitos_edesc {int dummy; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;


 int talitos_sg_map_ext (struct device*,struct scatterlist*,unsigned int,struct talitos_edesc*,struct talitos_ptr*,int,unsigned int,int,int ,int) ;

__attribute__((used)) static int talitos_sg_map(struct device *dev, struct scatterlist *src,
     unsigned int len, struct talitos_edesc *edesc,
     struct talitos_ptr *ptr, int sg_count,
     unsigned int offset, int tbl_off)
{
 return talitos_sg_map_ext(dev, src, len, edesc, ptr, sg_count, offset,
      tbl_off, 0, 0);
}
