
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int transition_ver ;
struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct usb_device {int dummy; } ;
struct uclogic_params {int pen_frame_flag; int frame; int pen; int member_0; } ;
struct TYPE_4__ {int parent; } ;
struct hid_device {TYPE_1__ dev; } ;
typedef int p ;
typedef scalar_t__ __u8 ;
struct TYPE_5__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPIPE ;
 int GFP_KERNEL ;
 int UCLOGIC_RDESC_BUTTONPAD_V2_ID ;
 int hid_dbg (struct hid_device*,char*,...) ;
 int hid_err (struct hid_device*,char*,int) ;
 struct usb_device* hid_to_usb_dev (struct hid_device*) ;
 int kfree (char*) ;
 char* kzalloc (size_t const,int ) ;
 int memcpy (struct uclogic_params*,struct uclogic_params*,int) ;
 int memset (struct uclogic_params*,int ,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 struct usb_interface* to_usb_interface (int ) ;
 int uclogic_params_cleanup (struct uclogic_params*) ;
 int uclogic_params_frame_init_v1_buttonpad (int *,int*,struct hid_device*) ;
 int uclogic_params_frame_init_with_desc (int *,int ,int ,int ) ;
 int uclogic_params_init_invalid (struct uclogic_params*) ;
 int uclogic_params_init_with_pen_unused (struct uclogic_params*) ;
 int uclogic_params_pen_init_v1 (int *,int*,struct hid_device*) ;
 int uclogic_params_pen_init_v2 (int *,int*,struct hid_device*) ;
 int uclogic_rdesc_buttonpad_v2_arr ;
 int uclogic_rdesc_buttonpad_v2_size ;
 int usb_string (struct usb_device*,int,char*,size_t const) ;

__attribute__((used)) static int uclogic_params_huion_init(struct uclogic_params *params,
         struct hid_device *hdev)
{
 int rc;
 struct usb_device *udev = hid_to_usb_dev(hdev);
 struct usb_interface *iface = to_usb_interface(hdev->dev.parent);
 __u8 bInterfaceNumber = iface->cur_altsetting->desc.bInterfaceNumber;
 bool found;

 struct uclogic_params p = {0, };
 static const char transition_ver[] = "HUION_T153_160607";
 char *ver_ptr = ((void*)0);
 const size_t ver_len = sizeof(transition_ver) + 1;


 if (params == ((void*)0) || hdev == ((void*)0)) {
  rc = -EINVAL;
  goto cleanup;
 }


 if (bInterfaceNumber != 0) {

  uclogic_params_init_with_pen_unused(&p);
  goto output;
 }


 ver_ptr = kzalloc(ver_len, GFP_KERNEL);
 if (ver_ptr == ((void*)0)) {
  rc = -ENOMEM;
  goto cleanup;
 }
 rc = usb_string(udev, 201, ver_ptr, ver_len);
 if (rc == -EPIPE) {
  *ver_ptr = '\0';
 } else if (rc < 0) {
  hid_err(hdev,
   "failed retrieving Huion firmware version: %d\n", rc);
  goto cleanup;
 }


 if (strcmp(ver_ptr, transition_ver) == 0) {
  hid_dbg(hdev,
   "transition firmware detected, not probing pen v2 parameters\n");
 } else {

  rc = uclogic_params_pen_init_v2(&p.pen, &found, hdev);
  if (rc != 0) {
   hid_err(hdev,
    "failed probing pen v2 parameters: %d\n", rc);
   goto cleanup;
  } else if (found) {
   hid_dbg(hdev, "pen v2 parameters found\n");

   rc = uclogic_params_frame_init_with_desc(
     &p.frame,
     uclogic_rdesc_buttonpad_v2_arr,
     uclogic_rdesc_buttonpad_v2_size,
     UCLOGIC_RDESC_BUTTONPAD_V2_ID);
   if (rc != 0) {
    hid_err(hdev,
     "failed creating v2 buttonpad parameters: %d\n",
     rc);
    goto cleanup;
   }

   p.pen_frame_flag = 0x20;
   goto output;
  }
  hid_dbg(hdev, "pen v2 parameters not found\n");
 }


 rc = uclogic_params_pen_init_v1(&p.pen, &found, hdev);
 if (rc != 0) {
  hid_err(hdev,
   "failed probing pen v1 parameters: %d\n", rc);
  goto cleanup;
 } else if (found) {
  hid_dbg(hdev, "pen v1 parameters found\n");

  rc = uclogic_params_frame_init_v1_buttonpad(
      &p.frame,
      &found, hdev);
  if (rc != 0) {
   hid_err(hdev, "v1 buttonpad probing failed: %d\n", rc);
   goto cleanup;
  }
  hid_dbg(hdev, "buttonpad v1 parameters%s found\n",
   (found ? "" : " not"));
  if (found) {

   p.pen_frame_flag = 0x20;
  }
  goto output;
 }
 hid_dbg(hdev, "pen v1 parameters not found\n");

 uclogic_params_init_invalid(&p);

output:

 memcpy(params, &p, sizeof(*params));
 memset(&p, 0, sizeof(p));
 rc = 0;
cleanup:
 kfree(ver_ptr);
 uclogic_params_cleanup(&p);
 return rc;
}
