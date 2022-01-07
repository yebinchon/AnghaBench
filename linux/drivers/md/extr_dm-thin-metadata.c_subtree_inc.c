
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_btree_info {int tm; } ;
typedef int root_le ;
typedef int __le64 ;


 int dm_tm_inc (int ,int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static void subtree_inc(void *context, const void *value)
{
 struct dm_btree_info *info = context;
 __le64 root_le;
 uint64_t root;

 memcpy(&root_le, value, sizeof(root_le));
 root = le64_to_cpu(root_le);
 dm_tm_inc(info->tm, root);
}
