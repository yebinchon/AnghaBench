
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {scalar_t__ spba_start_addr; scalar_t__ spba_end_addr; } ;
struct sdma_channel {int watermark_level; int event_id0; int event_id1; scalar_t__ per_address2; scalar_t__ per_address; int * event_mask; struct sdma_engine* sdma; } ;


 int SDMA_WATERMARK_LEVEL_CONT ;
 int SDMA_WATERMARK_LEVEL_DP ;
 int SDMA_WATERMARK_LEVEL_HWE ;
 int SDMA_WATERMARK_LEVEL_HWML ;
 int SDMA_WATERMARK_LEVEL_LWE ;
 int SDMA_WATERMARK_LEVEL_LWML ;
 int SDMA_WATERMARK_LEVEL_SP ;
 int set_bit (int,int *) ;
 int swap (int ,int ) ;

__attribute__((used)) static void sdma_set_watermarklevel_for_p2p(struct sdma_channel *sdmac)
{
 struct sdma_engine *sdma = sdmac->sdma;

 int lwml = sdmac->watermark_level & SDMA_WATERMARK_LEVEL_LWML;
 int hwml = (sdmac->watermark_level & SDMA_WATERMARK_LEVEL_HWML) >> 16;

 set_bit(sdmac->event_id0 % 32, &sdmac->event_mask[1]);
 set_bit(sdmac->event_id1 % 32, &sdmac->event_mask[0]);

 if (sdmac->event_id0 > 31)
  sdmac->watermark_level |= SDMA_WATERMARK_LEVEL_LWE;

 if (sdmac->event_id1 > 31)
  sdmac->watermark_level |= SDMA_WATERMARK_LEVEL_HWE;






 if (lwml > hwml) {
  sdmac->watermark_level &= ~(SDMA_WATERMARK_LEVEL_LWML |
      SDMA_WATERMARK_LEVEL_HWML);
  sdmac->watermark_level |= hwml;
  sdmac->watermark_level |= lwml << 16;
  swap(sdmac->event_mask[0], sdmac->event_mask[1]);
 }

 if (sdmac->per_address2 >= sdma->spba_start_addr &&
   sdmac->per_address2 <= sdma->spba_end_addr)
  sdmac->watermark_level |= SDMA_WATERMARK_LEVEL_SP;

 if (sdmac->per_address >= sdma->spba_start_addr &&
   sdmac->per_address <= sdma->spba_end_addr)
  sdmac->watermark_level |= SDMA_WATERMARK_LEVEL_DP;

 sdmac->watermark_level |= SDMA_WATERMARK_LEVEL_CONT;
}
