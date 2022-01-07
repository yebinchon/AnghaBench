
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf2k {size_t id; int bads; int gameport; int reads; } ;
struct gameport {int dummy; } ;


 int GF2K_LENGTH ;
 struct gf2k* gameport_get_drvdata (struct gameport*) ;
 scalar_t__* gf2k_length ;
 int gf2k_read (struct gf2k*,unsigned char*) ;
 scalar_t__ gf2k_read_packet (int ,scalar_t__,unsigned char*) ;

__attribute__((used)) static void gf2k_poll(struct gameport *gameport)
{
 struct gf2k *gf2k = gameport_get_drvdata(gameport);
 unsigned char data[GF2K_LENGTH];

 gf2k->reads++;

 if (gf2k_read_packet(gf2k->gameport, gf2k_length[gf2k->id], data) < gf2k_length[gf2k->id])
  gf2k->bads++;
 else
  gf2k_read(gf2k, data);
}
