
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int version; int product; int vendor; int bustype; } ;
struct input_dev {char const* name; TYPE_2__ dev; TYPE_1__ id; int uniq; int phys; int getkeycode; int setkeycode; int close; int open; int event; } ;
struct hid_input {char const* name; unsigned int application; int reports; int list; struct input_dev* input; } ;
struct hid_device {int quirks; int maxapplication; char const* name; int inputs; int dev; int version; int product; int vendor; int bus; int uniq; int phys; } ;


 int GFP_KERNEL ;
 int HID_QUIRK_INPUT_PER_APP ;
 int INIT_LIST_HEAD (int *) ;
 int hid_err (struct hid_device*,char*) ;
 int hidinput_close ;
 int hidinput_getkeycode ;
 int hidinput_input_event ;
 int hidinput_open ;
 int hidinput_setkeycode ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_set_drvdata (struct input_dev*,struct hid_device*) ;
 char const* kasprintf (int ,char*,char const*,char const*) ;
 int kfree (struct hid_input*) ;
 struct hid_input* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static struct hid_input *hidinput_allocate(struct hid_device *hid,
        unsigned int application)
{
 struct hid_input *hidinput = kzalloc(sizeof(*hidinput), GFP_KERNEL);
 struct input_dev *input_dev = input_allocate_device();
 const char *suffix = ((void*)0);
 size_t suffix_len, name_len;

 if (!hidinput || !input_dev)
  goto fail;

 if ((hid->quirks & HID_QUIRK_INPUT_PER_APP) &&
     hid->maxapplication > 1) {
  switch (application) {
  case 133:
   suffix = "Keyboard";
   break;
  case 132:
   suffix = "Keypad";
   break;
  case 131:
   suffix = "Mouse";
   break;
  case 136:
   suffix = "Pen";
   break;
  case 134:
   suffix = "Touchscreen";
   break;
  case 135:
   suffix = "Touchpad";
   break;
  case 130:
   suffix = "System Control";
   break;
  case 137:
   suffix = "Consumer Control";
   break;
  case 128:
   suffix = "Wireless Radio Control";
   break;
  case 129:
   suffix = "System Multi Axis";
   break;
  default:
   break;
  }
 }

 if (suffix) {
  name_len = strlen(hid->name);
  suffix_len = strlen(suffix);
  if ((name_len < suffix_len) ||
      strcmp(hid->name + name_len - suffix_len, suffix)) {
   hidinput->name = kasprintf(GFP_KERNEL, "%s %s",
         hid->name, suffix);
   if (!hidinput->name)
    goto fail;
  }
 }

 input_set_drvdata(input_dev, hid);
 input_dev->event = hidinput_input_event;
 input_dev->open = hidinput_open;
 input_dev->close = hidinput_close;
 input_dev->setkeycode = hidinput_setkeycode;
 input_dev->getkeycode = hidinput_getkeycode;

 input_dev->name = hidinput->name ? hidinput->name : hid->name;
 input_dev->phys = hid->phys;
 input_dev->uniq = hid->uniq;
 input_dev->id.bustype = hid->bus;
 input_dev->id.vendor = hid->vendor;
 input_dev->id.product = hid->product;
 input_dev->id.version = hid->version;
 input_dev->dev.parent = &hid->dev;

 hidinput->input = input_dev;
 hidinput->application = application;
 list_add_tail(&hidinput->list, &hid->inputs);

 INIT_LIST_HEAD(&hidinput->reports);

 return hidinput;

fail:
 kfree(hidinput);
 input_free_device(input_dev);
 hid_err(hid, "Out of memory during hid input probe\n");
 return ((void*)0);
}
