
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ disc_data; } ;
struct serport {int dummy; } ;


 int kfree (struct serport*) ;

__attribute__((used)) static void serport_ldisc_close(struct tty_struct *tty)
{
 struct serport *serport = (struct serport *) tty->disc_data;

 kfree(serport);
}
