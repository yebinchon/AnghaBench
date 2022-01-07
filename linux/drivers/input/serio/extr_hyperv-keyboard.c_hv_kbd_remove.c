
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_kbd_dev {int hv_serio; } ;
struct hv_device {int channel; } ;


 struct hv_kbd_dev* hv_get_drvdata (struct hv_device*) ;
 int hv_set_drvdata (struct hv_device*,int *) ;
 int kfree (struct hv_kbd_dev*) ;
 int serio_unregister_port (int ) ;
 int vmbus_close (int ) ;

__attribute__((used)) static int hv_kbd_remove(struct hv_device *hv_dev)
{
 struct hv_kbd_dev *kbd_dev = hv_get_drvdata(hv_dev);

 serio_unregister_port(kbd_dev->hv_serio);
 vmbus_close(hv_dev->channel);
 kfree(kbd_dev);

 hv_set_drvdata(hv_dev, ((void*)0));

 return 0;
}
