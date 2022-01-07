
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct timb_dma_chan {int chan; } ;
struct scatterlist {int dummy; } ;


 int EINVAL ;
 int USHRT_MAX ;
 int chan2dev (int *) ;
 int dev_dbg (int ,char*,int*,unsigned long long) ;
 int dev_err (int ,char*,...) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static int td_fill_desc(struct timb_dma_chan *td_chan, u8 *dma_desc,
 struct scatterlist *sg, bool last)
{
 if (sg_dma_len(sg) > USHRT_MAX) {
  dev_err(chan2dev(&td_chan->chan), "Too big sg element\n");
  return -EINVAL;
 }


 if (sg_dma_len(sg) % sizeof(u32)) {
  dev_err(chan2dev(&td_chan->chan), "Incorrect length: %d\n",
   sg_dma_len(sg));
  return -EINVAL;
 }

 dev_dbg(chan2dev(&td_chan->chan), "desc: %p, addr: 0x%llx\n",
  dma_desc, (unsigned long long)sg_dma_address(sg));

 dma_desc[7] = (sg_dma_address(sg) >> 24) & 0xff;
 dma_desc[6] = (sg_dma_address(sg) >> 16) & 0xff;
 dma_desc[5] = (sg_dma_address(sg) >> 8) & 0xff;
 dma_desc[4] = (sg_dma_address(sg) >> 0) & 0xff;

 dma_desc[3] = (sg_dma_len(sg) >> 8) & 0xff;
 dma_desc[2] = (sg_dma_len(sg) >> 0) & 0xff;

 dma_desc[1] = 0x00;
 dma_desc[0] = 0x21 | (last ? 0x02 : 0);

 return 0;
}
