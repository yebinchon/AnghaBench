
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_cache_policy {int dummy; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int policy_get_hint (struct dm_cache_policy*,int ) ;
 int to_cblock (int ) ;

__attribute__((used)) static int get_hint(uint32_t index, void *value_le, void *context)
{
 uint32_t value;
 struct dm_cache_policy *policy = context;

 value = policy_get_hint(policy, to_cblock(index));
 *((__le32 *) value_le) = cpu_to_le32(value);

 return 0;
}
