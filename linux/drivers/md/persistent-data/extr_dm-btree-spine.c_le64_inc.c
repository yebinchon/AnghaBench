
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v_le ;
struct dm_transaction_manager {int dummy; } ;
typedef int __le64 ;


 int dm_tm_inc (struct dm_transaction_manager*,int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static void le64_inc(void *context, const void *value_le)
{
 struct dm_transaction_manager *tm = context;
 __le64 v_le;

 memcpy(&v_le, value_le, sizeof(v_le));
 dm_tm_inc(tm, le64_to_cpu(v_le));
}
