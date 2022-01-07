
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int __be32 ;


 int __sbefifo_dump_ffdc (struct device*,int const*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sbefifo_ffdc_mutex ;

__attribute__((used)) static void sbefifo_dump_ffdc(struct device *dev, const __be32 *ffdc,
         size_t ffdc_sz, bool internal)
{
 mutex_lock(&sbefifo_ffdc_mutex);
 __sbefifo_dump_ffdc(dev, ffdc, ffdc_sz, internal);
 mutex_unlock(&sbefifo_ffdc_mutex);
}
