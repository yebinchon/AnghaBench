
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_channel {int peripheral_type; scalar_t__ watermark_level; scalar_t__ per_address2; scalar_t__ per_addr; scalar_t__ per_address; scalar_t__ shp_addr; scalar_t__* event_mask; int event_id0; scalar_t__ event_id1; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ IMX_DMATYPE_ASRC ;
 scalar_t__ IMX_DMATYPE_ASRC_SP ;


 int __set_bit (int ,scalar_t__*) ;
 int sdma_config_ownership (struct sdma_channel*,int,int,int) ;
 int sdma_disable_channel (struct dma_chan*) ;
 int sdma_get_pc (struct sdma_channel*,int) ;
 int sdma_load_context (struct sdma_channel*) ;
 int sdma_set_watermarklevel_for_p2p (struct sdma_channel*) ;
 struct sdma_channel* to_sdma_chan (struct dma_chan*) ;

__attribute__((used)) static int sdma_config_channel(struct dma_chan *chan)
{
 struct sdma_channel *sdmac = to_sdma_chan(chan);
 int ret;

 sdma_disable_channel(chan);

 sdmac->event_mask[0] = 0;
 sdmac->event_mask[1] = 0;
 sdmac->shp_addr = 0;
 sdmac->per_addr = 0;

 switch (sdmac->peripheral_type) {
 case 129:
  sdma_config_ownership(sdmac, 0, 1, 1);
  break;
 case 128:
  sdma_config_ownership(sdmac, 0, 1, 0);
  break;
 default:
  sdma_config_ownership(sdmac, 1, 1, 0);
  break;
 }

 sdma_get_pc(sdmac, sdmac->peripheral_type);

 if ((sdmac->peripheral_type != 128) &&
   (sdmac->peripheral_type != 129)) {

  if (sdmac->event_id1) {
   if (sdmac->peripheral_type == IMX_DMATYPE_ASRC_SP ||
       sdmac->peripheral_type == IMX_DMATYPE_ASRC)
    sdma_set_watermarklevel_for_p2p(sdmac);
  } else
   __set_bit(sdmac->event_id0, sdmac->event_mask);


  sdmac->shp_addr = sdmac->per_address;
  sdmac->per_addr = sdmac->per_address2;
 } else {
  sdmac->watermark_level = 0;
 }

 ret = sdma_load_context(sdmac);

 return ret;
}
