
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {size_t bytes_per_datum; } ;


 int iio_mark_update_needed_kfifo (struct iio_buffer*) ;

__attribute__((used)) static int iio_set_bytes_per_datum_kfifo(struct iio_buffer *r, size_t bpd)
{
 if (r->bytes_per_datum != bpd) {
  r->bytes_per_datum = bpd;
  iio_mark_update_needed_kfifo(r);
 }
 return 0;
}
