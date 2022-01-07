
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int scl_out (struct qib_devdata*,int) ;
 int sda_out (struct qib_devdata*,int) ;

__attribute__((used)) static void stop_seq(struct qib_devdata *dd)
{
 scl_out(dd, 0);
 sda_out(dd, 0);
 scl_out(dd, 1);
 sda_out(dd, 1);
}
