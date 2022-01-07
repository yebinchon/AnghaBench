
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_sprom {int boardflags2_hi; int boardflags2_lo; int boardflags_hi; int boardflags_lo; } ;


 int nvram_read_u32_2 (char const*,char*,int *,int *,int) ;

__attribute__((used)) static void bcm47xx_fill_board_data(struct ssb_sprom *sprom, const char *prefix,
        bool fallback)
{
 nvram_read_u32_2(prefix, "boardflags", &sprom->boardflags_lo,
    &sprom->boardflags_hi, fallback);
 nvram_read_u32_2(prefix, "boardflags2", &sprom->boardflags2_lo,
    &sprom->boardflags2_hi, fallback);
}
