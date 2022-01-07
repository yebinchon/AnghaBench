
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_operation_msg_hdr {int dummy; } ;
struct gb_message {int buffer; } ;
struct gb_host_device {size_t buffer_size_max; int dev; } ;
typedef int gfp_t ;


 int dev_warn (int *,char*,size_t,size_t) ;
 int gb_message_cache ;
 int gb_operation_message_init (struct gb_host_device*,struct gb_message*,int ,size_t,int ) ;
 int kmem_cache_free (int ,struct gb_message*) ;
 struct gb_message* kmem_cache_zalloc (int ,int ) ;
 int kzalloc (size_t,int ) ;

__attribute__((used)) static struct gb_message *
gb_operation_message_alloc(struct gb_host_device *hd, u8 type,
      size_t payload_size, gfp_t gfp_flags)
{
 struct gb_message *message;
 struct gb_operation_msg_hdr *header;
 size_t message_size = payload_size + sizeof(*header);

 if (message_size > hd->buffer_size_max) {
  dev_warn(&hd->dev, "requested message size too big (%zu > %zu)\n",
    message_size, hd->buffer_size_max);
  return ((void*)0);
 }


 message = kmem_cache_zalloc(gb_message_cache, gfp_flags);
 if (!message)
  return ((void*)0);

 message->buffer = kzalloc(message_size, gfp_flags);
 if (!message->buffer)
  goto err_free_message;


 gb_operation_message_init(hd, message, 0, payload_size, type);

 return message;

err_free_message:
 kmem_cache_free(gb_message_cache, message);

 return ((void*)0);
}
