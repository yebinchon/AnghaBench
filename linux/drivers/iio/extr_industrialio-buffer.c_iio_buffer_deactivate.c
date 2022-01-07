
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int pollq; int buffer_list; } ;


 int iio_buffer_put (struct iio_buffer*) ;
 int list_del_init (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void iio_buffer_deactivate(struct iio_buffer *buffer)
{
 list_del_init(&buffer->buffer_list);
 wake_up_interruptible(&buffer->pollq);
 iio_buffer_put(buffer);
}
