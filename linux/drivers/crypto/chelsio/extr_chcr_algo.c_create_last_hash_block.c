
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be64 ;


 int cpu_to_be64 (int) ;
 int memset (char*,int ,unsigned int) ;

__attribute__((used)) static void create_last_hash_block(char *bfr_ptr, unsigned int bs, u64 scmd1)
{
 memset(bfr_ptr, 0, bs);
 *bfr_ptr = 0x80;
 if (bs == 64)
  *(__be64 *)(bfr_ptr + 56) = cpu_to_be64(scmd1 << 3);
 else
  *(__be64 *)(bfr_ptr + 120) = cpu_to_be64(scmd1 << 3);
}
