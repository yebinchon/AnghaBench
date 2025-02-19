
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int const) ;

__attribute__((used)) static ssize_t bma180_show_avail(char *buf, const int *vals, unsigned int n,
     bool micros)
{
 size_t len = 0;
 int i;

 for (i = 0; i < n; i++) {
  if (!vals[i])
   continue;
  len += scnprintf(buf + len, PAGE_SIZE - len,
   micros ? "0.%06d " : "%d ", vals[i]);
 }
 buf[len - 1] = '\n';

 return len;
}
