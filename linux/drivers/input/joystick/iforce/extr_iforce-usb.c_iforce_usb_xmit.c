
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iforce {int xmit_flags; } ;


 int IFORCE_XMIT_RUNNING ;
 int __iforce_usb_xmit (struct iforce*) ;
 int test_and_set_bit (int ,int ) ;

__attribute__((used)) static void iforce_usb_xmit(struct iforce *iforce)
{
 if (!test_and_set_bit(IFORCE_XMIT_RUNNING, iforce->xmit_flags))
  __iforce_usb_xmit(iforce);
}
