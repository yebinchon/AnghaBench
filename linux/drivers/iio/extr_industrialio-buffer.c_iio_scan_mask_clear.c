
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int scan_mask; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static int iio_scan_mask_clear(struct iio_buffer *buffer, int bit)
{
 clear_bit(bit, buffer->scan_mask);
 return 0;
}
