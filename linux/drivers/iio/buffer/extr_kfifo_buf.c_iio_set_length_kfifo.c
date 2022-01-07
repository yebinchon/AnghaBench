
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {unsigned int length; } ;


 int iio_mark_update_needed_kfifo (struct iio_buffer*) ;

__attribute__((used)) static int iio_set_length_kfifo(struct iio_buffer *r, unsigned int length)
{

 if (length < 2)
  length = 2;
 if (r->length != length) {
  r->length = length;
  iio_mark_update_needed_kfifo(r);
 }
 return 0;
}
