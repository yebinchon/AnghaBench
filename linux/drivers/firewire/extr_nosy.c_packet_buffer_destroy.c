
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_buffer {int data; } ;


 int kfree (int ) ;

__attribute__((used)) static void
packet_buffer_destroy(struct packet_buffer *buffer)
{
 kfree(buffer->data);
}
