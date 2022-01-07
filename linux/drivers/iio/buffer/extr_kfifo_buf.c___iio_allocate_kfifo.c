
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_kfifo {int kf; } ;
struct __kfifo {int dummy; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 size_t UINT_MAX ;
 int __kfifo_alloc (struct __kfifo*,unsigned int,size_t,int ) ;
 size_t roundup_pow_of_two (unsigned int) ;

__attribute__((used)) static inline int __iio_allocate_kfifo(struct iio_kfifo *buf,
   size_t bytes_per_datum, unsigned int length)
{
 if ((length == 0) || (bytes_per_datum == 0))
  return -EINVAL;





 if (roundup_pow_of_two(length) > UINT_MAX / bytes_per_datum)
  return -EINVAL;

 return __kfifo_alloc((struct __kfifo *)&buf->kf, length,
        bytes_per_datum, GFP_KERNEL);
}
