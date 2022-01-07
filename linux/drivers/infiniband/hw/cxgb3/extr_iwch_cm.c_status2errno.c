
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EADDRINUSE ;
 int ECONNRESET ;
 int EHOSTUNREACH ;
 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;

__attribute__((used)) static int status2errno(int status)
{
 switch (status) {
 case 129:
  return 0;
 case 131:
  return -ECONNRESET;
 case 133:
  return -EHOSTUNREACH;
 case 130:
  return -ETIMEDOUT;
 case 128:
  return -ENOMEM;
 case 132:
  return -EADDRINUSE;
 default:
  return -EIO;
 }
}
