
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPLESMC_DATA_PORT ;
 int EIO ;
 scalar_t__ send_byte (char const,int ) ;

__attribute__((used)) static int send_argument(const char *key)
{
 int i;

 for (i = 0; i < 4; i++)
  if (send_byte(key[i], APPLESMC_DATA_PORT))
   return -EIO;
 return 0;
}
