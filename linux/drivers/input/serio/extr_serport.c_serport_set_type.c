
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct serport* disc_data; } ;
struct TYPE_2__ {unsigned long proto; unsigned long id; unsigned long extra; } ;
struct serport {TYPE_1__ id; } ;



__attribute__((used)) static void serport_set_type(struct tty_struct *tty, unsigned long type)
{
 struct serport *serport = tty->disc_data;

 serport->id.proto = type & 0x000000ff;
 serport->id.id = (type & 0x0000ff00) >> 8;
 serport->id.extra = (type & 0x00ff0000) >> 16;
}
