
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int CT82C710_DATA ;
 scalar_t__ ct82c170_wait () ;
 int outb_p (unsigned char,int ) ;

__attribute__((used)) static int ct82c710_write(struct serio *port, unsigned char c)
{
 if (ct82c170_wait()) return -1;
 outb_p(c, CT82C710_DATA);
 return 0;
}
