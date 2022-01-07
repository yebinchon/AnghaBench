
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u16 ;
struct atom_context {scalar_t__ cmd_table; scalar_t__ bios; } ;


 int CU16 (scalar_t__) ;
 int CU8 (int) ;

bool amdgpu_atom_parse_cmd_header(struct atom_context *ctx, int index, uint8_t * frev,
      uint8_t * crev)
{
 int offset = index * 2 + 4;
 int idx = CU16(ctx->cmd_table + offset);
 u16 *mct = (u16 *)(ctx->bios + ctx->cmd_table + 4);

 if (!mct[index])
  return 0;

 if (frev)
  *frev = CU8(idx + 2);
 if (crev)
  *crev = CU8(idx + 3);
 return 1;
}
