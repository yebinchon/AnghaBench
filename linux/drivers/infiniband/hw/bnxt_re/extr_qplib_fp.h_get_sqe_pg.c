
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SQE_CNT_PER_PG ;
 int SQE_MAX_IDX_PER_PG ;

__attribute__((used)) static inline u32 get_sqe_pg(u32 val)
{
 return ((val & ~SQE_MAX_IDX_PER_PG) / SQE_CNT_PER_PG);
}
