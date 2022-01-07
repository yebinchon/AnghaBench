
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {size_t length; } ;


 size_t min (size_t,size_t) ;
 int scatterwalk_map_and_copy (void*,struct scatterlist*,size_t,size_t,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int atmel_tdes_sg_copy(struct scatterlist **sg, size_t *offset,
   void *buf, size_t buflen, size_t total, int out)
{
 size_t count, off = 0;

 while (buflen && total) {
  count = min((*sg)->length - *offset, total);
  count = min(count, buflen);

  if (!count)
   return off;

  scatterwalk_map_and_copy(buf + off, *sg, *offset, count, out);

  off += count;
  buflen -= count;
  *offset += count;
  total -= count;

  if (*offset == (*sg)->length) {
   *sg = sg_next(*sg);
   if (*sg)
    *offset = 0;
   else
    total = 0;
  }
 }

 return off;
}
