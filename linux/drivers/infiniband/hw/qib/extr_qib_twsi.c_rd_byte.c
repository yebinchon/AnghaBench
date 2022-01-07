
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int scl_out (struct qib_devdata*,int) ;
 int sda_in (struct qib_devdata*,int ) ;
 int sda_out (struct qib_devdata*,int) ;
 int stop_cmd (struct qib_devdata*) ;

__attribute__((used)) static int rd_byte(struct qib_devdata *dd, int last)
{
 int bit_cntr, data;

 data = 0;

 for (bit_cntr = 7; bit_cntr >= 0; --bit_cntr) {
  data <<= 1;
  scl_out(dd, 1);
  data |= sda_in(dd, 0);
  scl_out(dd, 0);
 }
 if (last) {
  scl_out(dd, 1);
  stop_cmd(dd);
 } else {
  sda_out(dd, 0);
  scl_out(dd, 1);
  scl_out(dd, 0);
  sda_out(dd, 1);
 }
 return data;
}
