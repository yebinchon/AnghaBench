
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {scalar_t__ number; } ;
struct db9 {scalar_t__ parportno; size_t mode; int pd; int * dev; } ;
struct TYPE_2__ {int n_pads; } ;


 int DB9_MAX_DEVICES ;
 int DB9_MAX_PORTS ;
 struct db9** db9_base ;
 TYPE_1__* db9_modes ;
 int input_unregister_device (int ) ;
 int kfree (struct db9*) ;
 int min (int ,int ) ;
 int parport_unregister_device (int ) ;

__attribute__((used)) static void db9_detach(struct parport *port)
{
 int i;
 struct db9 *db9;

 for (i = 0; i < DB9_MAX_PORTS; i++) {
  if (db9_base[i] && db9_base[i]->parportno == port->number)
   break;
 }

 if (i == DB9_MAX_PORTS)
  return;

 db9 = db9_base[i];
 db9_base[i] = ((void*)0);

 for (i = 0; i < min(db9_modes[db9->mode].n_pads, DB9_MAX_DEVICES); i++)
  input_unregister_device(db9->dev[i]);
 parport_unregister_device(db9->pd);
 kfree(db9);
}
