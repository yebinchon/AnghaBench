
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxrc {int urb; } ;


 int usb_free_urb (int ) ;

__attribute__((used)) static void pxrc_free_urb(void *_pxrc)
{
 struct pxrc *pxrc = _pxrc;

 usb_free_urb(pxrc->urb);
}
