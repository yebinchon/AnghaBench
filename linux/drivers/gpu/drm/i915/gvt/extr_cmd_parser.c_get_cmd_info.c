
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_gvt {int dummy; } ;
struct cmd_info {int dummy; } ;


 scalar_t__ INVALID_OP ;
 struct cmd_info const* find_cmd_entry (struct intel_gvt*,scalar_t__,int) ;
 scalar_t__ get_opcode (scalar_t__,int) ;

__attribute__((used)) static inline const struct cmd_info *get_cmd_info(struct intel_gvt *gvt,
  u32 cmd, int ring_id)
{
 u32 opcode;

 opcode = get_opcode(cmd, ring_id);
 if (opcode == INVALID_OP)
  return ((void*)0);

 return find_cmd_entry(gvt, opcode, ring_id);
}
