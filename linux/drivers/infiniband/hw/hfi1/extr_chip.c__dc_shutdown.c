
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dc_shutdown; int dc8051_lock; } ;


 int DC_DC8051_CFG_RST ;
 int lcb_shutdown (struct hfi1_devdata*,int) ;
 int lockdep_assert_held (int *) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void _dc_shutdown(struct hfi1_devdata *dd)
{
 lockdep_assert_held(&dd->dc8051_lock);

 if (dd->dc_shutdown)
  return;

 dd->dc_shutdown = 1;

 lcb_shutdown(dd, 1);





 write_csr(dd, DC_DC8051_CFG_RST, 0x1);
}
