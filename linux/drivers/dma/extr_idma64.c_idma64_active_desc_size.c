
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct idma64_hw_desc {scalar_t__ llp; scalar_t__ len; } ;
struct idma64_desc {size_t length; unsigned int ndesc; struct idma64_hw_desc* hw; } ;
struct idma64_chan {struct idma64_desc* desc; } ;


 int CTL_HI ;
 size_t IDMA64C_CTLH_BLOCK_TS (int ) ;
 int LLP ;
 int channel_readl (struct idma64_chan*,int ) ;
 scalar_t__ channel_readq (struct idma64_chan*,int ) ;

__attribute__((used)) static size_t idma64_active_desc_size(struct idma64_chan *idma64c)
{
 struct idma64_desc *desc = idma64c->desc;
 struct idma64_hw_desc *hw;
 size_t bytes = desc->length;
 u64 llp = channel_readq(idma64c, LLP);
 u32 ctlhi = channel_readl(idma64c, CTL_HI);
 unsigned int i = 0;

 do {
  hw = &desc->hw[i];
  if (hw->llp == llp)
   break;
  bytes -= hw->len;
 } while (++i < desc->ndesc);

 if (!i)
  return bytes;


 bytes += desc->hw[--i].len;

 return bytes - IDMA64C_CTLH_BLOCK_TS(ctlhi);
}
