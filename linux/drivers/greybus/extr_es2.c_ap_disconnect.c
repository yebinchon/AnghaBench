
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct es2_ap_dev {int cport_in; int hd; } ;


 int es2_arpc_in_disable (struct es2_ap_dev*) ;
 int es2_cport_in_disable (struct es2_ap_dev*,int *) ;
 int es2_destroy (struct es2_ap_dev*) ;
 int gb_hd_del (int ) ;
 struct es2_ap_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void ap_disconnect(struct usb_interface *interface)
{
 struct es2_ap_dev *es2 = usb_get_intfdata(interface);

 gb_hd_del(es2->hd);

 es2_cport_in_disable(es2, &es2->cport_in);
 es2_arpc_in_disable(es2);

 es2_destroy(es2);
}
