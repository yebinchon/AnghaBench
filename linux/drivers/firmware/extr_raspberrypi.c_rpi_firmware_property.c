
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpi_firmware_property_tag_header {size_t buf_size; scalar_t__ req_resp_size; int tag; } ;
struct rpi_firmware {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,size_t) ;
 int rpi_firmware_property_list (struct rpi_firmware*,void*,size_t) ;

int rpi_firmware_property(struct rpi_firmware *fw,
     u32 tag, void *tag_data, size_t buf_size)
{
 struct rpi_firmware_property_tag_header *header;
 int ret;






 void *data = kmalloc(sizeof(*header) + buf_size, GFP_KERNEL);

 if (!data)
  return -ENOMEM;

 header = data;
 header->tag = tag;
 header->buf_size = buf_size;
 header->req_resp_size = 0;
 memcpy(data + sizeof(*header), tag_data, buf_size);

 ret = rpi_firmware_property_list(fw, data, buf_size + sizeof(*header));

 memcpy(tag_data, data + sizeof(*header), buf_size);

 kfree(data);

 return ret;
}
