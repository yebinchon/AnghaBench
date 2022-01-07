
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_message {int buffer; } ;


 int gb_message_cache ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct gb_message*) ;

__attribute__((used)) static void gb_operation_message_free(struct gb_message *message)
{
 kfree(message->buffer);
 kmem_cache_free(gb_message_cache, message);
}
