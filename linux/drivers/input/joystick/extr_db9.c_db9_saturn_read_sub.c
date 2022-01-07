
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int parport_read_data (struct parport*) ;
 int parport_read_status (struct parport*) ;

__attribute__((used)) static unsigned char db9_saturn_read_sub(struct parport *port, int type)
{
 unsigned char data;

 if (type) {

  data = parport_read_status(port) ^ 0x80;
  return (data & 0x80 ? 1 : 0) | (data & 0x40 ? 2 : 0)
       | (data & 0x20 ? 4 : 0) | (data & 0x10 ? 8 : 0);
 } else {

  data = parport_read_data(port) & 0x0f;
  return (data & 0x8 ? 1 : 0) | (data & 0x4 ? 2 : 0)
       | (data & 0x2 ? 4 : 0) | (data & 0x1 ? 8 : 0);
 }
}
