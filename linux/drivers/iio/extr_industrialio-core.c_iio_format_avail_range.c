
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EFBIG ;

 scalar_t__ PAGE_SIZE ;
 scalar_t__ __iio_format_value (char*,scalar_t__,int,int,int const*) ;
 scalar_t__ snprintf (char*,scalar_t__,char*) ;

__attribute__((used)) static ssize_t iio_format_avail_range(char *buf, const int *vals, int type)
{
 int i;
 ssize_t len;

 len = snprintf(buf, PAGE_SIZE, "[");
 switch (type) {
 case 128:
  for (i = 0; i < 3; i++) {
   len += __iio_format_value(buf + len, PAGE_SIZE - len,
        type, 1, &vals[i]);
   if (len >= PAGE_SIZE)
    return -EFBIG;
   if (i < 2)
    len += snprintf(buf + len, PAGE_SIZE - len,
      " ");
   else
    len += snprintf(buf + len, PAGE_SIZE - len,
      "]\n");
   if (len >= PAGE_SIZE)
    return -EFBIG;
  }
  break;
 default:
  for (i = 0; i < 3; i++) {
   len += __iio_format_value(buf + len, PAGE_SIZE - len,
        type, 2, &vals[i * 2]);
   if (len >= PAGE_SIZE)
    return -EFBIG;
   if (i < 2)
    len += snprintf(buf + len, PAGE_SIZE - len,
      " ");
   else
    len += snprintf(buf + len, PAGE_SIZE - len,
      "]\n");
   if (len >= PAGE_SIZE)
    return -EFBIG;
  }
 }

 return len;
}
