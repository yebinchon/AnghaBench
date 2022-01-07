
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_sprom {int revision; int leddc_off_time; int leddc_on_time; int alpha2; } ;


 int bcm47xx_fill_board_data (struct ssb_sprom*,char const*,int) ;
 int bcm47xx_fill_sprom_ethernet (struct ssb_sprom*,char const*,int) ;
 int bcm47xx_fill_sprom_path_r45 (struct ssb_sprom*,char const*,int) ;
 int bcm47xx_fill_sprom_path_r4589 (struct ssb_sprom*,char const*,int) ;
 int bcm47xx_sprom_fill_auto (struct ssb_sprom*,char const*,int) ;
 int nvram_read_alpha2 (char const*,char*,int ,int) ;
 int nvram_read_leddc (char const*,char*,int *,int *,int) ;
 int nvram_read_u8 (char const*,int *,char*,int*,int ,int) ;

void bcm47xx_fill_sprom(struct ssb_sprom *sprom, const char *prefix,
   bool fallback)
{
 bcm47xx_fill_sprom_ethernet(sprom, prefix, fallback);
 bcm47xx_fill_board_data(sprom, prefix, fallback);

 nvram_read_u8(prefix, ((void*)0), "sromrev", &sprom->revision, 0, fallback);


 nvram_read_alpha2(prefix, "ccode", sprom->alpha2, fallback);
 if (sprom->revision >= 3)
  nvram_read_leddc(prefix, "leddc", &sprom->leddc_on_time,
     &sprom->leddc_off_time, fallback);

 switch (sprom->revision) {
 case 4:
 case 5:
  bcm47xx_fill_sprom_path_r4589(sprom, prefix, fallback);
  bcm47xx_fill_sprom_path_r45(sprom, prefix, fallback);
  break;
 case 8:
 case 9:
  bcm47xx_fill_sprom_path_r4589(sprom, prefix, fallback);
  break;
 }

 bcm47xx_sprom_fill_auto(sprom, prefix, fallback);
}
