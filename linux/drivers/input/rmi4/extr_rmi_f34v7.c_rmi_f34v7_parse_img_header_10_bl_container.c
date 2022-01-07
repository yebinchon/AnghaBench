
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int size; void const* data; } ;
struct TYPE_7__ {unsigned int size; void const* data; } ;
struct TYPE_6__ {int size; scalar_t__ data; } ;
struct TYPE_9__ {TYPE_3__ lockdown; TYPE_2__ bl_config; TYPE_1__ bootloader; } ;
struct TYPE_10__ {TYPE_4__ img; } ;
struct f34_data {TYPE_5__ v7; } ;
struct container_descriptor {int content_length; int content_address; int container_id; } ;






 unsigned int get_unaligned_le32 (scalar_t__) ;
 unsigned int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void rmi_f34v7_parse_img_header_10_bl_container(struct f34_data *f34,
             const void *image)
{
 int i;
 int num_of_containers;
 unsigned int addr;
 unsigned int container_id;
 unsigned int length;
 const void *content;
 const struct container_descriptor *descriptor;

 num_of_containers = f34->v7.img.bootloader.size / 4 - 1;

 for (i = 1; i <= num_of_containers; i++) {
  addr = get_unaligned_le32(f34->v7.img.bootloader.data + i * 4);
  descriptor = image + addr;
  container_id = le16_to_cpu(descriptor->container_id);
  content = image + le32_to_cpu(descriptor->content_address);
  length = le32_to_cpu(descriptor->content_length);
  switch (container_id) {
  case 131:
  case 128:
   f34->v7.img.bl_config.data = content;
   f34->v7.img.bl_config.size = length;
   break;
  case 130:
  case 129:
   f34->v7.img.lockdown.data = content;
   f34->v7.img.lockdown.size = length;
   break;
  default:
   break;
  }
 }
}
