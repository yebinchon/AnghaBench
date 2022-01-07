
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmcmsptwi_cmd {int type; int write_len; int read_len; } ;



__attribute__((used)) static inline u32 pmcmsptwi_cmd_to_reg(const struct pmcmsptwi_cmd *cmd)
{
 return ((cmd->type & 0x3) << 8) |
  (((cmd->write_len - 1) & 0x7) << 4) |
  ((cmd->read_len - 1) & 0x7);
}
