
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ide_timing {scalar_t__ udma; } ;


 int TR_133_UDMAREG_UDMA_EN ;
 int TR_133_UDMAREG_UDMA_MASK ;
 scalar_t__ XFER_UDMA_6 ;
 struct ide_timing* ide_timing_find_mode (scalar_t__) ;
 int kauai_lookup_timing (int ,int) ;
 int shasta_udma133_timings ;

__attribute__((used)) static int
set_timings_udma_shasta(u32 *pio_timings, u32 *ultra_timings, u8 speed)
{
 struct ide_timing *t = ide_timing_find_mode(speed);
 u32 tr;

 if (speed > XFER_UDMA_6 || t == ((void*)0))
  return 1;
 tr = kauai_lookup_timing(shasta_udma133_timings, (int)t->udma);
 *ultra_timings = ((*ultra_timings) & ~TR_133_UDMAREG_UDMA_MASK) | tr;
 *ultra_timings = (*ultra_timings) | TR_133_UDMAREG_UDMA_EN;

 return 0;
}
