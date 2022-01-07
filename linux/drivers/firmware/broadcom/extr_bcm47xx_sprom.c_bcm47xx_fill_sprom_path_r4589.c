
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_sprom_core_pwr_info {int * pa_5gh; int * pa_5gl; int * pa_5g; int maxpwr_5gl; int maxpwr_5gh; int maxpwr_5g; int * pa_2g; int itssi_5g; int itssi_2g; int maxpwr_2g; } ;
struct ssb_sprom {struct ssb_sprom_core_pwr_info* core_pwr_info; } ;
typedef int postfix ;


 int ARRAY_SIZE (struct ssb_sprom_core_pwr_info*) ;
 int nvram_read_u16 (char const*,char*,char*,int *,int ,int) ;
 int nvram_read_u8 (char const*,char*,char*,int *,int ,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void bcm47xx_fill_sprom_path_r4589(struct ssb_sprom *sprom,
       const char *prefix, bool fallback)
{
 char postfix[2];
 int i;

 for (i = 0; i < ARRAY_SIZE(sprom->core_pwr_info); i++) {
  struct ssb_sprom_core_pwr_info *pwr_info;

  pwr_info = &sprom->core_pwr_info[i];

  snprintf(postfix, sizeof(postfix), "%i", i);
  nvram_read_u8(prefix, postfix, "maxp2ga",
         &pwr_info->maxpwr_2g, 0, fallback);
  nvram_read_u8(prefix, postfix, "itt2ga",
         &pwr_info->itssi_2g, 0, fallback);
  nvram_read_u8(prefix, postfix, "itt5ga",
         &pwr_info->itssi_5g, 0, fallback);
  nvram_read_u16(prefix, postfix, "pa2gw0a",
          &pwr_info->pa_2g[0], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa2gw1a",
          &pwr_info->pa_2g[1], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa2gw2a",
          &pwr_info->pa_2g[2], 0, fallback);
  nvram_read_u8(prefix, postfix, "maxp5ga",
         &pwr_info->maxpwr_5g, 0, fallback);
  nvram_read_u8(prefix, postfix, "maxp5gha",
         &pwr_info->maxpwr_5gh, 0, fallback);
  nvram_read_u8(prefix, postfix, "maxp5gla",
         &pwr_info->maxpwr_5gl, 0, fallback);
  nvram_read_u16(prefix, postfix, "pa5gw0a",
          &pwr_info->pa_5g[0], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa5gw1a",
          &pwr_info->pa_5g[1], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa5gw2a",
          &pwr_info->pa_5g[2], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa5glw0a",
          &pwr_info->pa_5gl[0], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa5glw1a",
          &pwr_info->pa_5gl[1], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa5glw2a",
          &pwr_info->pa_5gl[2], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa5ghw0a",
          &pwr_info->pa_5gh[0], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa5ghw1a",
          &pwr_info->pa_5gh[1], 0, fallback);
  nvram_read_u16(prefix, postfix, "pa5ghw2a",
          &pwr_info->pa_5gh[2], 0, fallback);
 }
}
