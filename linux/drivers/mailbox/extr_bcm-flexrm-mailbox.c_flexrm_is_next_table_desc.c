
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 scalar_t__ DESC_DEC (int ,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 scalar_t__ NPTR_TYPE ;
 int flexrm_read_desc (void*) ;

__attribute__((used)) static bool flexrm_is_next_table_desc(void *desc_ptr)
{
 u64 desc = flexrm_read_desc(desc_ptr);
 u32 type = DESC_DEC(desc, DESC_TYPE_SHIFT, DESC_TYPE_MASK);

 return (type == NPTR_TYPE) ? 1 : 0;
}
