
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hid_device* private; } ;
struct hid_device {unsigned int rsize; unsigned int dev_rsize; int driver_input_lock; int * dev_rdesc; int * rdesc; } ;
typedef int __u8 ;


 scalar_t__ down_interruptible (int *) ;
 int hid_dump_device (struct hid_device*,struct seq_file*) ;
 int hid_dump_input_mapping (struct hid_device*,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int up (int *) ;

__attribute__((used)) static int hid_debug_rdesc_show(struct seq_file *f, void *p)
{
 struct hid_device *hdev = f->private;
 const __u8 *rdesc = hdev->rdesc;
 unsigned rsize = hdev->rsize;
 int i;

 if (!rdesc) {
  rdesc = hdev->dev_rdesc;
  rsize = hdev->dev_rsize;
 }


 for (i = 0; i < rsize; i++)
  seq_printf(f, "%02x ", rdesc[i]);
 seq_printf(f, "\n\n");


 if (down_interruptible(&hdev->driver_input_lock))
  return 0;

 hid_dump_device(hdev, f);
 seq_printf(f, "\n");
 hid_dump_input_mapping(hdev, f);

 up(&hdev->driver_input_lock);

 return 0;
}
