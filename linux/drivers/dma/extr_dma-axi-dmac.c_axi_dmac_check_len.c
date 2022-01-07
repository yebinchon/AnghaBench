
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_dmac_chan {unsigned int length_align_mask; } ;



__attribute__((used)) static bool axi_dmac_check_len(struct axi_dmac_chan *chan, unsigned int len)
{
 if (len == 0)
  return 0;
 if ((len & chan->length_align_mask) != 0)
  return 0;
 return 1;
}
