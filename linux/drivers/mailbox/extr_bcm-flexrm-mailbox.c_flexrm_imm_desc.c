
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int DESC_ENC (int ,int ,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 int IMM_DATA_MASK ;
 int IMM_DATA_SHIFT ;
 int IMM_TYPE ;

__attribute__((used)) static u64 flexrm_imm_desc(u64 data)
{
 u64 desc = 0;

 DESC_ENC(desc, IMM_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
 DESC_ENC(desc, data, IMM_DATA_SHIFT, IMM_DATA_MASK);

 return desc;
}
