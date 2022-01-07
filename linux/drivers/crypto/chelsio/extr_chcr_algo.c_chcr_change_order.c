
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int __be64 ;
typedef int __be32 ;


 int SHA512_DIGEST_SIZE ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;

__attribute__((used)) static void chcr_change_order(char *buf, int ds)
{
 int i;

 if (ds == SHA512_DIGEST_SIZE) {
  for (i = 0; i < (ds / sizeof(u64)); i++)
   *((__be64 *)buf + i) =
    cpu_to_be64(*((u64 *)buf + i));
 } else {
  for (i = 0; i < (ds / sizeof(u32)); i++)
   *((__be32 *)buf + i) =
    cpu_to_be32(*((u32 *)buf + i));
 }
}
