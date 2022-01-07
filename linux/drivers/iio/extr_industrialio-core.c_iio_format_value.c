
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EFBIG ;
 int PAGE_SIZE ;
 int __iio_format_value (char*,int,unsigned int,int,int*) ;
 int sprintf (char*,char*) ;

ssize_t iio_format_value(char *buf, unsigned int type, int size, int *vals)
{
 ssize_t len;

 len = __iio_format_value(buf, PAGE_SIZE, type, size, vals);
 if (len >= PAGE_SIZE - 1)
  return -EFBIG;

 return len + sprintf(buf + len, "\n");
}
