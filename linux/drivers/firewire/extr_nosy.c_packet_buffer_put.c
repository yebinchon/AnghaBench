
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_buffer {scalar_t__ capacity; char* data; int wait; int size; struct packet* tail; int lost_packet_count; int total_packet_count; } ;
struct packet {size_t length; char* data; } ;


 int atomic_add (int,int *) ;
 scalar_t__ atomic_read (int *) ;
 int memcpy (char*,void*,size_t) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
packet_buffer_put(struct packet_buffer *buffer, void *data, size_t length)
{
 char *end;

 buffer->total_packet_count++;

 if (buffer->capacity <
     atomic_read(&buffer->size) + sizeof(struct packet) + length) {
  buffer->lost_packet_count++;
  return;
 }

 end = buffer->data + buffer->capacity;
 buffer->tail->length = length;

 if (&buffer->tail->data[length] < end) {
  memcpy(buffer->tail->data, data, length);
  buffer->tail = (struct packet *) &buffer->tail->data[length];
 } else {
  size_t split = end - buffer->tail->data;

  memcpy(buffer->tail->data, data, split);
  memcpy(buffer->data, data + split, length - split);
  buffer->tail = (struct packet *) &buffer->data[length - split];
 }



 atomic_add(sizeof(struct packet) + length, &buffer->size);
 wake_up_interruptible(&buffer->wait);
}
