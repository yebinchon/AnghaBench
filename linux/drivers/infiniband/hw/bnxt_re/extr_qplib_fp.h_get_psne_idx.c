
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PSNE_MAX_IDX_PER_PG ;

__attribute__((used)) static inline u32 get_psne_idx(u32 val)
{
 return (val & PSNE_MAX_IDX_PER_PG);
}
