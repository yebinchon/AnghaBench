
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_buffer {int pollq; TYPE_1__* access; } ;
struct TYPE_2__ {int (* store_to ) (struct iio_buffer*,void const*) ;} ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 void* iio_demux (struct iio_buffer*,void const*) ;
 int stub1 (struct iio_buffer*,void const*) ;
 int wake_up_interruptible_poll (int *,int) ;

__attribute__((used)) static int iio_push_to_buffer(struct iio_buffer *buffer, const void *data)
{
 const void *dataout = iio_demux(buffer, data);
 int ret;

 ret = buffer->access->store_to(buffer, dataout);
 if (ret)
  return ret;





 wake_up_interruptible_poll(&buffer->pollq, EPOLLIN | EPOLLRDNORM);
 return 0;
}
