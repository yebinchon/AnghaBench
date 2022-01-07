
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_ring_buffer_info {int ring_buffer_mutex; int ring_buffer; } ;
struct vmbus_channel {struct hv_ring_buffer_info inbound; } ;
typedef int ssize_t ;


 int EINVAL ;
 int hv_get_bytes_to_read (struct hv_ring_buffer_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t read_avail_show(struct vmbus_channel *channel, char *buf)
{
 struct hv_ring_buffer_info *rbi = &channel->inbound;
 ssize_t ret;

 mutex_lock(&rbi->ring_buffer_mutex);
 if (!rbi->ring_buffer) {
  mutex_unlock(&rbi->ring_buffer_mutex);
  return -EINVAL;
 }

 ret = sprintf(buf, "%u\n", hv_get_bytes_to_read(rbi));
 mutex_unlock(&rbi->ring_buffer_mutex);
 return ret;
}
