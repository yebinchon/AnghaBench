
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_5__ {int dn; scalar_t__ const pio_mode; } ;
typedef TYPE_1__ ide_drive_t ;


 int ATAC_CH0D0_DMA ;
 int ATAC_CH0D0_PIO ;
 int ATAC_CH0D1_DMA ;
 int ATAC_CH0D1_PIO ;
 scalar_t__ const XFER_MW_DMA_0 ;
 scalar_t__ const XFER_MW_DMA_2 ;
 scalar_t__ const XFER_PIO_0 ;
 scalar_t__ const XFER_SW_DMA_0 ;
 scalar_t__ const XFER_UDMA_0 ;
 scalar_t__ const XFER_UDMA_4 ;
 int* cs5535_mwdma_timings ;
 int* cs5535_pio_cmd_timings ;
 int* cs5535_pio_dta_timings ;
 int* cs5535_udma_timings ;
 TYPE_1__* ide_get_pair_dev (TYPE_1__*) ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int ) ;

__attribute__((used)) static void cs5535_set_speed(ide_drive_t *drive, const u8 speed)
{
 u32 reg = 0, dummy;
 u8 unit = drive->dn & 1;


 if (speed < XFER_SW_DMA_0) {
  ide_drive_t *pair = ide_get_pair_dev(drive);
  u8 cmd, pioa;

  cmd = pioa = speed - XFER_PIO_0;

  if (pair) {
   u8 piob = pair->pio_mode - XFER_PIO_0;

   if (piob < cmd)
    cmd = piob;
  }


  reg = (cs5535_pio_cmd_timings[cmd] << 16) |
   cs5535_pio_dta_timings[pioa];
  wrmsr(unit ? ATAC_CH0D1_PIO : ATAC_CH0D0_PIO, reg, 0);


  rdmsr(unit ? ATAC_CH0D0_PIO : ATAC_CH0D1_PIO, reg, dummy);

  if (((reg >> 16) & cs5535_pio_cmd_timings[cmd]) !=
   cs5535_pio_cmd_timings[cmd]) {
   reg &= 0x0000FFFF;
   reg |= cs5535_pio_cmd_timings[cmd] << 16;
   wrmsr(unit ? ATAC_CH0D0_PIO : ATAC_CH0D1_PIO, reg, 0);
  }


  rdmsr(unit ? ATAC_CH0D1_DMA : ATAC_CH0D0_DMA, reg, dummy);
  wrmsr(unit ? ATAC_CH0D1_DMA : ATAC_CH0D0_DMA,
     reg | 0x80000000UL, 0);
 } else {
  rdmsr(unit ? ATAC_CH0D1_DMA : ATAC_CH0D0_DMA, reg, dummy);

  reg &= 0x80000000UL;

  if (speed >= XFER_UDMA_0 && speed <= XFER_UDMA_4)
   reg |= cs5535_udma_timings[speed - XFER_UDMA_0];
  else if (speed >= XFER_MW_DMA_0 && speed <= XFER_MW_DMA_2)
   reg |= cs5535_mwdma_timings[speed - XFER_MW_DMA_0];
  else
   return;

  wrmsr(unit ? ATAC_CH0D1_DMA : ATAC_CH0D0_DMA, reg, 0);
 }
}
