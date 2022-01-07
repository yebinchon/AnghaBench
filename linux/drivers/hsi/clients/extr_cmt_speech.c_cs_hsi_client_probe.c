
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsi_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int channel_id_cmd; int channel_id_data; int dataind_queue; int chardev_queue; int * hi; struct hsi_client* cl; scalar_t__ opened; int lock; int wait; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_1__ cs_char_data ;
 int cs_char_miscdev ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 void* hsi_get_channel_id_by_name (struct hsi_client*,char*) ;
 int init_waitqueue_head (int *) ;
 int misc_register (int *) ;
 int spin_lock_init (int *) ;
 struct hsi_client* to_hsi_client (struct device*) ;

__attribute__((used)) static int cs_hsi_client_probe(struct device *dev)
{
 int err = 0;
 struct hsi_client *cl = to_hsi_client(dev);

 dev_dbg(dev, "hsi_client_probe\n");
 init_waitqueue_head(&cs_char_data.wait);
 spin_lock_init(&cs_char_data.lock);
 cs_char_data.opened = 0;
 cs_char_data.cl = cl;
 cs_char_data.hi = ((void*)0);
 INIT_LIST_HEAD(&cs_char_data.chardev_queue);
 INIT_LIST_HEAD(&cs_char_data.dataind_queue);

 cs_char_data.channel_id_cmd = hsi_get_channel_id_by_name(cl,
  "speech-control");
 if (cs_char_data.channel_id_cmd < 0) {
  err = cs_char_data.channel_id_cmd;
  dev_err(dev, "Could not get cmd channel (%d)\n", err);
  return err;
 }

 cs_char_data.channel_id_data = hsi_get_channel_id_by_name(cl,
  "speech-data");
 if (cs_char_data.channel_id_data < 0) {
  err = cs_char_data.channel_id_data;
  dev_err(dev, "Could not get data channel (%d)\n", err);
  return err;
 }

 err = misc_register(&cs_char_miscdev);
 if (err)
  dev_err(dev, "Failed to register: %d\n", err);

 return err;
}
