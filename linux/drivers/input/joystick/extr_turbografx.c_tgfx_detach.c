
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgfx {scalar_t__ parportno; int pd; scalar_t__* dev; } ;
struct parport {scalar_t__ number; } ;


 int TGFX_MAX_DEVICES ;
 int TGFX_MAX_PORTS ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct tgfx*) ;
 int parport_unregister_device (int ) ;
 struct tgfx** tgfx_base ;

__attribute__((used)) static void tgfx_detach(struct parport *port)
{
 int i;
 struct tgfx *tgfx;

 for (i = 0; i < TGFX_MAX_PORTS; i++) {
  if (tgfx_base[i] && tgfx_base[i]->parportno == port->number)
   break;
 }

 if (i == TGFX_MAX_PORTS)
  return;

 tgfx = tgfx_base[i];
 tgfx_base[i] = ((void*)0);

 for (i = 0; i < TGFX_MAX_DEVICES; i++)
  if (tgfx->dev[i])
   input_unregister_device(tgfx->dev[i]);
 parport_unregister_device(tgfx->pd);
 kfree(tgfx);
}
