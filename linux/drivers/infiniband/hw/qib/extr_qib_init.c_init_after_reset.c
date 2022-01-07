
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int num_pports; scalar_t__ pport; int (* f_sendctrl ) (scalar_t__,int) ;int (* f_rcvctrl ) (scalar_t__,int,int) ;} ;


 int QIB_RCVCTRL_CTXT_DIS ;
 int QIB_RCVCTRL_INTRAVAIL_DIS ;
 int QIB_RCVCTRL_TAILUPD_DIS ;
 int QIB_SENDCTRL_AVAIL_DIS ;
 int QIB_SENDCTRL_SEND_DIS ;
 int stub1 (scalar_t__,int,int) ;
 int stub2 (scalar_t__,int) ;

__attribute__((used)) static int init_after_reset(struct qib_devdata *dd)
{
 int i;






 for (i = 0; i < dd->num_pports; ++i) {




  dd->f_rcvctrl(dd->pport + i, QIB_RCVCTRL_CTXT_DIS |
      QIB_RCVCTRL_INTRAVAIL_DIS |
      QIB_RCVCTRL_TAILUPD_DIS, -1);

  dd->f_sendctrl(dd->pport + i, QIB_SENDCTRL_SEND_DIS |
   QIB_SENDCTRL_AVAIL_DIS);
 }

 return 0;
}
