
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int parport_write_control (struct parport*,unsigned char) ;
 int parport_write_data (struct parport*,unsigned char) ;

__attribute__((used)) static void db9_saturn_write_sub(struct parport *port, int type, unsigned char data, int powered, int pwr_sub)
{
 unsigned char c;

 switch (type) {
 case 1:
  c = 0x80 | 0x30 | (powered ? 0x08 : 0) | (pwr_sub ? 0x04 : 0) | data;
  parport_write_data(port, c);
  break;
 case 2:
  c = 0x40 | data << 4 | (powered ? 0x08 : 0) | (pwr_sub ? 0x04 : 0) | 0x03;
  parport_write_data(port, c);
  break;
 case 0:
  c = ((((data & 2) ? 2 : 0) | ((data & 1) ? 4 : 0)) ^ 0x02) | !powered;
  parport_write_control(port, c);
  break;
 }
}
