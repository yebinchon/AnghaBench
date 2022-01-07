
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_demux_table {unsigned int from; unsigned int length; unsigned int to; int l; } ;
struct iio_buffer {int demux_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct iio_demux_table* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int iio_buffer_add_demux(struct iio_buffer *buffer,
 struct iio_demux_table **p, unsigned int in_loc, unsigned int out_loc,
 unsigned int length)
{

 if (*p && (*p)->from + (*p)->length == in_loc &&
  (*p)->to + (*p)->length == out_loc) {
  (*p)->length += length;
 } else {
  *p = kmalloc(sizeof(**p), GFP_KERNEL);
  if (*p == ((void*)0))
   return -ENOMEM;
  (*p)->from = in_loc;
  (*p)->to = out_loc;
  (*p)->length = length;
  list_add_tail(&(*p)->l, &buffer->demux_list);
 }

 return 0;
}
