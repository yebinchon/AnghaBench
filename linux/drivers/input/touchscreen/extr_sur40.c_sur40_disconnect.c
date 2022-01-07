
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct sur40_state {struct sur40_state* bulk_in_buffer; int input; int v4l2; int vdev; int hdl; } ;


 int DRIVER_DESC ;
 int dev_dbg (int *,char*,int ) ;
 int input_free_polled_device (int ) ;
 int input_unregister_polled_device (int ) ;
 int kfree (struct sur40_state*) ;
 struct sur40_state* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void sur40_disconnect(struct usb_interface *interface)
{
 struct sur40_state *sur40 = usb_get_intfdata(interface);

 v4l2_ctrl_handler_free(&sur40->hdl);
 video_unregister_device(&sur40->vdev);
 v4l2_device_unregister(&sur40->v4l2);

 input_unregister_polled_device(sur40->input);
 input_free_polled_device(sur40->input);
 kfree(sur40->bulk_in_buffer);
 kfree(sur40);

 usb_set_intfdata(interface, ((void*)0));
 dev_dbg(&interface->dev, "%s is now disconnected\n", DRIVER_DESC);
}
