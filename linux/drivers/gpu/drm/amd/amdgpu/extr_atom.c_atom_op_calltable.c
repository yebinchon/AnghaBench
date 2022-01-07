
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int abort; scalar_t__ ps_shift; scalar_t__ ps; TYPE_3__* ctx; } ;
typedef TYPE_1__ atom_exec_context ;
struct TYPE_5__ {scalar_t__ cmd_table; } ;


 int ATOM_TABLE_NAMES_CNT ;
 int SDEBUG (char*,int,...) ;
 scalar_t__ U16 (scalar_t__) ;
 int U8 (int ) ;
 int amdgpu_atom_execute_table_locked (TYPE_3__*,int,scalar_t__) ;
 int * atom_table_names ;

__attribute__((used)) static void atom_op_calltable(atom_exec_context *ctx, int *ptr, int arg)
{
 int idx = U8((*ptr)++);
 int r = 0;

 if (idx < ATOM_TABLE_NAMES_CNT)
  SDEBUG("   table: %d (%s)\n", idx, atom_table_names[idx]);
 else
  SDEBUG("   table: %d\n", idx);
 if (U16(ctx->ctx->cmd_table + 4 + 2 * idx))
  r = amdgpu_atom_execute_table_locked(ctx->ctx, idx, ctx->ps + ctx->ps_shift);
 if (r) {
  ctx->abort = 1;
 }
}
