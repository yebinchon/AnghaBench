
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int DESC_ENC (int ,int ,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 int NULL_TOGGLE_MASK ;
 int NULL_TOGGLE_SHIFT ;
 int NULL_TYPE ;

__attribute__((used)) static u64 flexrm_null_desc(u32 toggle)
{
 u64 desc = 0;

 DESC_ENC(desc, NULL_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
 DESC_ENC(desc, toggle, NULL_TOGGLE_SHIFT, NULL_TOGGLE_MASK);

 return desc;
}
