
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_params {unsigned int desc_size; int * desc_ptr; } ;
struct hid_device {unsigned int dev_rsize; } ;
typedef int __u8 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int hid_dbg (struct hid_device*,char*,...) ;
 int kfree (int *) ;
 int * kmemdup (int *,unsigned int,int ) ;
 int memset (struct uclogic_params*,int ,int) ;

__attribute__((used)) static int uclogic_params_init_with_opt_desc(struct uclogic_params *params,
          struct hid_device *hdev,
          unsigned int orig_desc_size,
          __u8 *desc_ptr,
          unsigned int desc_size)
{
 __u8 *desc_copy_ptr = ((void*)0);
 unsigned int desc_copy_size;
 int rc;


 if (params == ((void*)0) || hdev == ((void*)0) ||
     (desc_ptr == ((void*)0) && desc_size != 0)) {
  rc = -EINVAL;
  goto cleanup;
 }


 if (hdev->dev_rsize == orig_desc_size) {
  hid_dbg(hdev,
   "device report descriptor matches the expected size, replacing\n");
  desc_copy_ptr = kmemdup(desc_ptr, desc_size, GFP_KERNEL);
  if (desc_copy_ptr == ((void*)0)) {
   rc = -ENOMEM;
   goto cleanup;
  }
  desc_copy_size = desc_size;
 } else {
  hid_dbg(hdev,
   "device report descriptor doesn't match the expected size (%u != %u), preserving\n",
   hdev->dev_rsize, orig_desc_size);
  desc_copy_ptr = ((void*)0);
  desc_copy_size = 0;
 }


 memset(params, 0, sizeof(*params));
 params->desc_ptr = desc_copy_ptr;
 desc_copy_ptr = ((void*)0);
 params->desc_size = desc_copy_size;

 rc = 0;
cleanup:
 kfree(desc_copy_ptr);
 return rc;
}
