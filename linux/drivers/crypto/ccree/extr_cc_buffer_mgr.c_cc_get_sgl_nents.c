
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct scatterlist {unsigned int length; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,unsigned int,unsigned int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static unsigned int cc_get_sgl_nents(struct device *dev,
         struct scatterlist *sg_list,
         unsigned int nbytes, u32 *lbytes)
{
 unsigned int nents = 0;

 while (nbytes && sg_list) {
  nents++;

  *lbytes = nbytes;
  nbytes -= (sg_list->length > nbytes) ?
    nbytes : sg_list->length;
  sg_list = sg_next(sg_list);
 }
 dev_dbg(dev, "nents %d last bytes %d\n", nents, *lbytes);
 return nents;
}
