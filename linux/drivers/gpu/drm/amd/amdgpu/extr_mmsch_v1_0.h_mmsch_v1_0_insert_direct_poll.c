
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {void* reg_offset; } ;
struct mmsch_v1_0_cmd_direct_polling {void* wait_value; void* mask_value; TYPE_1__ cmd_header; } ;


 int memcpy (void*,struct mmsch_v1_0_cmd_direct_polling*,int) ;

__attribute__((used)) static inline void mmsch_v1_0_insert_direct_poll(struct mmsch_v1_0_cmd_direct_polling *direct_poll,
       uint32_t *init_table,
       uint32_t reg_offset,
       uint32_t mask, uint32_t wait)
{
 direct_poll->cmd_header.reg_offset = reg_offset;
 direct_poll->mask_value = mask;
 direct_poll->wait_value = wait;
 memcpy((void *)init_table, direct_poll, sizeof(struct mmsch_v1_0_cmd_direct_polling));
}
