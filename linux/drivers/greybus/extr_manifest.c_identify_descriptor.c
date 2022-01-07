
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct manifest_desc {size_t size; char* data; int type; int links; } ;
struct greybus_descriptor_string {int dummy; } ;
struct greybus_descriptor_interface {int dummy; } ;
struct greybus_descriptor_header {int type; int size; } ;
struct greybus_descriptor_cport {int dummy; } ;
struct greybus_descriptor_bundle {int dummy; } ;
struct TYPE_2__ {size_t length; } ;
struct greybus_descriptor {TYPE_1__ string; struct greybus_descriptor_header header; } ;
struct gb_interface {int manifest_descs; int dev; } ;


 size_t ALIGN (size_t,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;





 int dev_err (int *,char*,size_t,...) ;
 int dev_warn (int *,char*,int ,size_t,size_t) ;
 int get_descriptor_type_string (int) ;
 struct manifest_desc* kzalloc (int,int ) ;
 size_t le16_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int identify_descriptor(struct gb_interface *intf,
          struct greybus_descriptor *desc, size_t size)
{
 struct greybus_descriptor_header *desc_header = &desc->header;
 struct manifest_desc *descriptor;
 size_t desc_size;
 size_t expected_size;

 if (size < sizeof(*desc_header)) {
  dev_err(&intf->dev, "manifest too small (%zu < %zu)\n", size,
   sizeof(*desc_header));
  return -EINVAL;
 }

 desc_size = le16_to_cpu(desc_header->size);
 if (desc_size > size) {
  dev_err(&intf->dev, "descriptor too big (%zu > %zu)\n",
   desc_size, size);
  return -EINVAL;
 }


 expected_size = sizeof(*desc_header);

 switch (desc_header->type) {
 case 128:
  expected_size += sizeof(struct greybus_descriptor_string);
  expected_size += desc->string.length;


  expected_size = ALIGN(expected_size, 4);
  break;
 case 130:
  expected_size += sizeof(struct greybus_descriptor_interface);
  break;
 case 132:
  expected_size += sizeof(struct greybus_descriptor_bundle);
  break;
 case 131:
  expected_size += sizeof(struct greybus_descriptor_cport);
  break;
 case 129:
 default:
  dev_err(&intf->dev, "invalid descriptor type (%u)\n",
   desc_header->type);
  return -EINVAL;
 }

 if (desc_size < expected_size) {
  dev_err(&intf->dev, "%s descriptor too small (%zu < %zu)\n",
   get_descriptor_type_string(desc_header->type),
   desc_size, expected_size);
  return -EINVAL;
 }


 if (desc_size > expected_size) {
  dev_warn(&intf->dev, "%s descriptor size mismatch (want %zu got %zu)\n",
    get_descriptor_type_string(desc_header->type),
    expected_size, desc_size);
 }

 descriptor = kzalloc(sizeof(*descriptor), GFP_KERNEL);
 if (!descriptor)
  return -ENOMEM;

 descriptor->size = desc_size;
 descriptor->data = (char *)desc + sizeof(*desc_header);
 descriptor->type = desc_header->type;
 list_add_tail(&descriptor->links, &intf->manifest_descs);



 return desc_size;
}
