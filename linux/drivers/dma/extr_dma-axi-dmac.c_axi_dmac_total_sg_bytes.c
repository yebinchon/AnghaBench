
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_dmac_sg {unsigned int x_len; unsigned int y_len; } ;
struct axi_dmac_chan {scalar_t__ hw_2d; } ;



__attribute__((used)) static inline unsigned int axi_dmac_total_sg_bytes(struct axi_dmac_chan *chan,
 struct axi_dmac_sg *sg)
{
 if (chan->hw_2d)
  return sg->x_len * sg->y_len;
 else
  return sg->x_len;
}
