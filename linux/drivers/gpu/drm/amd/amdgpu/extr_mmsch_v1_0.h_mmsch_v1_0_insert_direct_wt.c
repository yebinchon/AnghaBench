
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {void* reg_offset; } ;
struct mmsch_v1_0_cmd_direct_write {void* reg_value; TYPE_1__ cmd_header; } ;


 int memcpy (void*,struct mmsch_v1_0_cmd_direct_write*,int) ;

__attribute__((used)) static inline void mmsch_v1_0_insert_direct_wt(struct mmsch_v1_0_cmd_direct_write *direct_wt,
            uint32_t *init_table,
            uint32_t reg_offset,
            uint32_t value)
{
 direct_wt->cmd_header.reg_offset = reg_offset;
 direct_wt->reg_value = value;
 memcpy((void *)init_table, direct_wt, sizeof(struct mmsch_v1_0_cmd_direct_write));
}
