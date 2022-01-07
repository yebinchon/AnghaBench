
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct gameport_driver {int dummy; } ;
struct gameport {int dummy; } ;
struct adi_port {TYPE_1__* adi; struct gameport* gameport; } ;
struct TYPE_5__ {scalar_t__ ret; scalar_t__ length; int * dev; } ;


 int ADI_DATA_DELAY ;
 int ADI_INIT_DELAY ;
 scalar_t__ ADI_MIN_LEN_LENGTH ;
 int ENODEV ;
 int ENOMEM ;
 int GAMEPORT_MODE_RAW ;
 int GFP_KERNEL ;
 int adi_get_bits (TYPE_1__*,int) ;
 int adi_id_decode (TYPE_1__*,struct adi_port*) ;
 int adi_init_center (TYPE_1__*) ;
 int adi_init_digital (struct gameport*) ;
 int adi_init_input (TYPE_1__*,struct adi_port*,int) ;
 int adi_move_bits (struct adi_port*,int ) ;
 int adi_poll ;
 scalar_t__ adi_read (struct adi_port*) ;
 int adi_read_packet (struct adi_port*) ;
 int gameport_close (struct gameport*) ;
 int gameport_open (struct gameport*,struct gameport_driver*,int ) ;
 int gameport_set_drvdata (struct gameport*,struct adi_port*) ;
 int gameport_set_poll_handler (struct gameport*,int ) ;
 int gameport_set_poll_interval (struct gameport*,int) ;
 int input_free_device (int *) ;
 int input_register_device (int *) ;
 int input_unregister_device (int *) ;
 int kfree (struct adi_port*) ;
 struct adi_port* kzalloc (int,int ) ;
 int msleep (int ) ;

__attribute__((used)) static int adi_connect(struct gameport *gameport, struct gameport_driver *drv)
{
 struct adi_port *port;
 int i;
 int err;

 port = kzalloc(sizeof(struct adi_port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;

 port->gameport = gameport;

 gameport_set_drvdata(gameport, port);

 err = gameport_open(gameport, drv, GAMEPORT_MODE_RAW);
 if (err)
  goto fail1;

 adi_init_digital(gameport);
 adi_read_packet(port);

 if (port->adi[0].ret >= ADI_MIN_LEN_LENGTH)
  adi_move_bits(port, adi_get_bits(port->adi, 10));

 for (i = 0; i < 2; i++) {
  adi_id_decode(port->adi + i, port);

  if (!port->adi[i].length)
   continue;

  err = adi_init_input(port->adi + i, port, i);
  if (err)
   goto fail2;
 }

 if (!port->adi[0].length && !port->adi[1].length) {
  err = -ENODEV;
  goto fail2;
 }

 gameport_set_poll_handler(gameport, adi_poll);
 gameport_set_poll_interval(gameport, 20);

 msleep(ADI_INIT_DELAY);
 if (adi_read(port)) {
  msleep(ADI_DATA_DELAY);
  adi_read(port);
 }

 for (i = 0; i < 2; i++)
  if (port->adi[i].length > 0) {
   adi_init_center(port->adi + i);
   err = input_register_device(port->adi[i].dev);
   if (err)
    goto fail3;
  }

 return 0;

 fail3: while (--i >= 0) {
  if (port->adi[i].length > 0) {
   input_unregister_device(port->adi[i].dev);
   port->adi[i].dev = ((void*)0);
  }
 }
 fail2: for (i = 0; i < 2; i++)
  input_free_device(port->adi[i].dev);
 gameport_close(gameport);
 fail1: gameport_set_drvdata(gameport, ((void*)0));
 kfree(port);
 return err;
}
