
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,unsigned int) ;

__attribute__((used)) static char *is_rcv_avail_name(char *buf, size_t bsize, unsigned int source)
{
 snprintf(buf, bsize, "RcvAvailInt%u", source);
 return buf;
}
