
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;


 int applesmc_read_key (char const*,int*,int) ;

__attribute__((used)) static int applesmc_read_s16(const char *key, s16 *value)
{
 u8 buffer[2];
 int ret;

 ret = applesmc_read_key(key, buffer, 2);
 if (ret)
  return ret;

 *value = ((s16)buffer[0] << 8) | buffer[1];
 return 0;
}
