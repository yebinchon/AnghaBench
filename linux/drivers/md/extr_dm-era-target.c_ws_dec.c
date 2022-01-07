
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ws_d ;
struct writeset_disk {int root; } ;
struct era_metadata {int bitset_info; } ;
typedef int dm_block_t ;


 int dm_bitset_del (int *,int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (struct writeset_disk*,void const*,int) ;

__attribute__((used)) static void ws_dec(void *context, const void *value)
{
 struct era_metadata *md = context;
 struct writeset_disk ws_d;
 dm_block_t b;

 memcpy(&ws_d, value, sizeof(ws_d));
 b = le64_to_cpu(ws_d.root);

 dm_bitset_del(&md->bitset_info, b);
}
