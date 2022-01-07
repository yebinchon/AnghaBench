
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {size_t cmds_count; TYPE_1__* cmds; } ;
struct brcm_message {TYPE_2__ sba; } ;
struct TYPE_3__ {int flags; scalar_t__ data_len; scalar_t__ resp_len; } ;


 int BRCM_SBA_CMD_HAS_OUTPUT ;
 int BRCM_SBA_CMD_HAS_RESP ;
 int BRCM_SBA_CMD_TYPE_B ;
 int BRCM_SBA_CMD_TYPE_C ;
 scalar_t__ DSTT_LENGTH_MASK ;
 scalar_t__ SRCT_LENGTH_MASK ;

__attribute__((used)) static bool flexrm_sba_sanity_check(struct brcm_message *msg)
{
 u32 i;

 if (!msg->sba.cmds || !msg->sba.cmds_count)
  return 0;

 for (i = 0; i < msg->sba.cmds_count; i++) {
  if (((msg->sba.cmds[i].flags & BRCM_SBA_CMD_TYPE_B) ||
       (msg->sba.cmds[i].flags & BRCM_SBA_CMD_TYPE_C)) &&
      (msg->sba.cmds[i].flags & BRCM_SBA_CMD_HAS_OUTPUT))
   return 0;
  if ((msg->sba.cmds[i].flags & BRCM_SBA_CMD_TYPE_B) &&
      (msg->sba.cmds[i].data_len > SRCT_LENGTH_MASK))
   return 0;
  if ((msg->sba.cmds[i].flags & BRCM_SBA_CMD_TYPE_C) &&
      (msg->sba.cmds[i].data_len > SRCT_LENGTH_MASK))
   return 0;
  if ((msg->sba.cmds[i].flags & BRCM_SBA_CMD_HAS_RESP) &&
      (msg->sba.cmds[i].resp_len > DSTT_LENGTH_MASK))
   return 0;
  if ((msg->sba.cmds[i].flags & BRCM_SBA_CMD_HAS_OUTPUT) &&
      (msg->sba.cmds[i].data_len > DSTT_LENGTH_MASK))
   return 0;
 }

 return 1;
}
