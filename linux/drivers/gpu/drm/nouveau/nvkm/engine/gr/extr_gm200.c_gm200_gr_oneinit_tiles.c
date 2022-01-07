
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf100_gr {int gpc_nr; int tpc_total; int screen_tile_row_offset; int tile; } ;


 int gf100_gr_oneinit_tiles (struct gf100_gr*) ;
 int gm200_gr_tile_map_2_8 ;
 int gm200_gr_tile_map_4_16 ;
 int gm200_gr_tile_map_6_24 ;
 int memcpy (int ,int ,int) ;

void
gm200_gr_oneinit_tiles(struct gf100_gr *gr)
{






 if (gr->gpc_nr == 2 && gr->tpc_total == 8) {
  memcpy(gr->tile, gm200_gr_tile_map_2_8, gr->tpc_total);
  gr->screen_tile_row_offset = 1;
 } else
 if (gr->gpc_nr == 4 && gr->tpc_total == 16) {
  memcpy(gr->tile, gm200_gr_tile_map_4_16, gr->tpc_total);
  gr->screen_tile_row_offset = 4;
 } else
 if (gr->gpc_nr == 6 && gr->tpc_total == 24) {
  memcpy(gr->tile, gm200_gr_tile_map_6_24, gr->tpc_total);
  gr->screen_tile_row_offset = 5;
 } else {
  gf100_gr_oneinit_tiles(gr);
 }
}
