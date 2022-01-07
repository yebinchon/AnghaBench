
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;
struct a3d {scalar_t__ length; unsigned char mode; int bads; int gameport; int reads; } ;


 int A3D_MAX_LENGTH ;
 scalar_t__ a3d_csum (unsigned char*,scalar_t__) ;
 int a3d_read (struct a3d*,unsigned char*) ;
 scalar_t__ a3d_read_packet (int ,scalar_t__,unsigned char*) ;
 struct a3d* gameport_get_drvdata (struct gameport*) ;

__attribute__((used)) static void a3d_poll(struct gameport *gameport)
{
 struct a3d *a3d = gameport_get_drvdata(gameport);
 unsigned char data[A3D_MAX_LENGTH];

 a3d->reads++;
 if (a3d_read_packet(a3d->gameport, a3d->length, data) != a3d->length ||
     data[0] != a3d->mode || a3d_csum(data, a3d->length))
  a3d->bads++;
 else
  a3d_read(a3d, data);
}
