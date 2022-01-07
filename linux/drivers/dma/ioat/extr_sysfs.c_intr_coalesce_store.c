
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int intr_coalesce; } ;
struct dma_chan {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int IOAT_INTRDELAY_MASK ;
 int sscanf (char const*,char*,int*) ;
 struct ioatdma_chan* to_ioat_chan (struct dma_chan*) ;

__attribute__((used)) static ssize_t intr_coalesce_store(struct dma_chan *c, const char *page,
size_t count)
{
 int intr_coalesce = 0;
 struct ioatdma_chan *ioat_chan = to_ioat_chan(c);

 if (sscanf(page, "%du", &intr_coalesce) != -1) {
  if ((intr_coalesce < 0) ||
      (intr_coalesce > IOAT_INTRDELAY_MASK))
   return -EINVAL;
  ioat_chan->intr_coalesce = intr_coalesce;
 }

 return count;
}
