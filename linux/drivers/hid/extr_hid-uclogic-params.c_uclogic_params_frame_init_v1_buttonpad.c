
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct uclogic_params_frame {int dummy; } ;
struct hid_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPIPE ;
 int GFP_KERNEL ;
 int UCLOGIC_RDESC_BUTTONPAD_V1_ID ;
 int hid_dbg (struct hid_device*,char*,...) ;
 struct usb_device* hid_to_usb_dev (struct hid_device*) ;
 int kfree (char*) ;
 char* kzalloc (size_t const,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int uclogic_params_frame_init_with_desc (struct uclogic_params_frame*,int ,int ,int ) ;
 int uclogic_rdesc_buttonpad_v1_arr ;
 int uclogic_rdesc_buttonpad_v1_size ;
 int usb_string (struct usb_device*,int,char*,size_t const) ;

__attribute__((used)) static int uclogic_params_frame_init_v1_buttonpad(
     struct uclogic_params_frame *frame,
     bool *pfound,
     struct hid_device *hdev)
{
 int rc;
 bool found = 0;
 struct usb_device *usb_dev = hid_to_usb_dev(hdev);
 char *str_buf = ((void*)0);
 const size_t str_len = 16;


 if (frame == ((void*)0) || pfound == ((void*)0) || hdev == ((void*)0)) {
  rc = -EINVAL;
  goto cleanup;
 }




 str_buf = kzalloc(str_len, GFP_KERNEL);
 if (str_buf == ((void*)0)) {
  rc = -ENOMEM;
  goto cleanup;
 }

 rc = usb_string(usb_dev, 123, str_buf, str_len);
 if (rc == -EPIPE) {
  hid_dbg(hdev,
   "generic button -enabling string descriptor not found\n");
 } else if (rc < 0) {
  goto cleanup;
 } else if (strncmp(str_buf, "HK On", rc) != 0) {
  hid_dbg(hdev,
   "invalid response to enabling generic buttons: \"%s\"\n",
   str_buf);
 } else {
  hid_dbg(hdev, "generic buttons enabled\n");
  rc = uclogic_params_frame_init_with_desc(
    frame,
    uclogic_rdesc_buttonpad_v1_arr,
    uclogic_rdesc_buttonpad_v1_size,
    UCLOGIC_RDESC_BUTTONPAD_V1_ID);
  if (rc != 0)
   goto cleanup;
  found = 1;
 }

 *pfound = found;
 rc = 0;
cleanup:
 kfree(str_buf);
 return rc;
}
