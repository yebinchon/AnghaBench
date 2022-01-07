
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_buffer {size_t capacity; int wait; int size; scalar_t__ lost_packet_count; int * data; struct packet* tail; struct packet* head; } ;
struct packet {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int * kmalloc (size_t,int ) ;

__attribute__((used)) static int
packet_buffer_init(struct packet_buffer *buffer, size_t capacity)
{
 buffer->data = kmalloc(capacity, GFP_KERNEL);
 if (buffer->data == ((void*)0))
  return -ENOMEM;
 buffer->head = (struct packet *) buffer->data;
 buffer->tail = (struct packet *) buffer->data;
 buffer->capacity = capacity;
 buffer->lost_packet_count = 0;
 atomic_set(&buffer->size, 0);
 init_waitqueue_head(&buffer->wait);

 return 0;
}
