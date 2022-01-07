
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_ip {int dummy; } ;


 int LIMA_DLBU_FB_DIM ;
 int LIMA_DLBU_START_TILE_POS ;
 int LIMA_DLBU_TLLIST_CONF ;
 int LIMA_DLBU_TLLIST_VBASEADDR ;
 int dlbu_write (int ,int ) ;

void lima_dlbu_set_reg(struct lima_ip *ip, u32 *reg)
{
 dlbu_write(LIMA_DLBU_TLLIST_VBASEADDR, reg[0]);
 dlbu_write(LIMA_DLBU_FB_DIM, reg[1]);
 dlbu_write(LIMA_DLBU_TLLIST_CONF, reg[2]);
 dlbu_write(LIMA_DLBU_START_TILE_POS, reg[3]);
}
