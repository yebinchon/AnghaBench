
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __be32 ;


 int APPLESMC_READ_CMD ;
 int KEY_COUNT_KEY ;
 unsigned int be32_to_cpu (int ) ;
 int read_smc (int ,int ,int *,int) ;

__attribute__((used)) static int read_register_count(unsigned int *count)
{
 __be32 be;
 int ret;

 ret = read_smc(APPLESMC_READ_CMD, KEY_COUNT_KEY, (u8 *)&be, 4);
 if (ret)
  return ret;

 *count = be32_to_cpu(be);
 return 0;
}
