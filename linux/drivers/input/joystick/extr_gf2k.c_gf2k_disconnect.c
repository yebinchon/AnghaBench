
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf2k {int dev; } ;
struct gameport {int dummy; } ;


 int gameport_close (struct gameport*) ;
 struct gf2k* gameport_get_drvdata (struct gameport*) ;
 int gameport_set_drvdata (struct gameport*,int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct gf2k*) ;

__attribute__((used)) static void gf2k_disconnect(struct gameport *gameport)
{
 struct gf2k *gf2k = gameport_get_drvdata(gameport);

 input_unregister_device(gf2k->dev);
 gameport_close(gameport);
 gameport_set_drvdata(gameport, ((void*)0));
 kfree(gf2k);
}
