
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int QIB_TWSI_START ;
 int QIB_TWSI_STOP ;
 int start_seq (struct qib_devdata*) ;
 int stop_cmd (struct qib_devdata*) ;
 int wr_byte (struct qib_devdata*,int) ;

__attribute__((used)) static int qib_twsi_wr(struct qib_devdata *dd, int data, int flags)
{
 int ret = 1;

 if (flags & QIB_TWSI_START)
  start_seq(dd);

 ret = wr_byte(dd, data);

 if (flags & QIB_TWSI_STOP)
  stop_cmd(dd);
 return ret;
}
