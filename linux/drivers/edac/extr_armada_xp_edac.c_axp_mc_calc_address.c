
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct axp_mc_drvdata {int width; scalar_t__* cs_addr_sel; } ;



__attribute__((used)) static uint32_t axp_mc_calc_address(struct axp_mc_drvdata *drvdata,
        uint8_t cs, uint8_t bank, uint16_t row,
        uint16_t col)
{
 if (drvdata->width == 8) {

  if (drvdata->cs_addr_sel[cs])

   return (((row & 0xfff8) << 16) |
    ((bank & 0x7) << 16) |
    ((row & 0x7) << 13) |
    ((col & 0x3ff) << 3));
  else
   return (((row & 0xffff << 16) |
     ((bank & 0x7) << 13) |
     ((col & 0x3ff)) << 3));
 } else if (drvdata->width == 4) {

  if (drvdata->cs_addr_sel[cs])

   return (((row & 0xfff0) << 15) |
    ((bank & 0x7) << 16) |
    ((row & 0xf) << 12) |
    ((col & 0x3ff) << 2));
  else
   return (((row & 0xffff << 15) |
     ((bank & 0x7) << 12) |
     ((col & 0x3ff)) << 2));
 } else {

  if (drvdata->cs_addr_sel[cs])

   return (((row & 0xffe0) << 14) |
    ((bank & 0x7) << 16) |
    ((row & 0x1f) << 11) |
    ((col & 0x3ff) << 1));
  else
   return (((row & 0xffff << 14) |
     ((bank & 0x7) << 11) |
     ((col & 0x3ff)) << 1));
 }
}
