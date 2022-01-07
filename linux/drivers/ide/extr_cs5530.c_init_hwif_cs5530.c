
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ide_hwif_t ;


 scalar_t__ CS5530_BAD_PIO (int) ;
 unsigned long CS5530_BASEREG (int *) ;
 int ** cs5530_pio_timings ;
 int inl (unsigned long) ;
 int outl (int ,unsigned long) ;

__attribute__((used)) static void init_hwif_cs5530 (ide_hwif_t *hwif)
{
 unsigned long basereg;
 u32 d0_timings;

 basereg = CS5530_BASEREG(hwif);
 d0_timings = inl(basereg + 0);
 if (CS5530_BAD_PIO(d0_timings))
  outl(cs5530_pio_timings[(d0_timings >> 31) & 1][0], basereg + 0);
 if (CS5530_BAD_PIO(inl(basereg + 8)))
  outl(cs5530_pio_timings[(d0_timings >> 31) & 1][0], basereg + 8);
}
