
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int const,int const) ;

__attribute__((used)) static ssize_t mma8452_show_int_plus_micros(char *buf, const int (*vals)[2],
         int n)
{
 size_t len = 0;

 while (n-- > 0)
  len += scnprintf(buf + len, PAGE_SIZE - len, "%d.%06d ",
     vals[n][0], vals[n][1]);


 buf[len - 1] = '\n';

 return len;
}
