
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int TWSI_BUF_WAIT_USEC ;
 int stop_seq (struct qib_devdata*) ;
 int udelay (int ) ;

__attribute__((used)) static void stop_cmd(struct qib_devdata *dd)
{
 stop_seq(dd);
 udelay(TWSI_BUF_WAIT_USEC);
}
