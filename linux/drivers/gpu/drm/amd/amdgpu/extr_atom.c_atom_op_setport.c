
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ atom_exec_context ;
struct TYPE_4__ {int io_mode; } ;


 int ATOM_IO_IIO ;
 int ATOM_IO_MM ;
 int ATOM_IO_NAMES_CNT ;
 int ATOM_IO_PCI ;
 int ATOM_IO_SYSIO ;



 int SDEBUG (char*,int,...) ;
 int U16 (int) ;
 int * atom_io_names ;

__attribute__((used)) static void atom_op_setport(atom_exec_context *ctx, int *ptr, int arg)
{
 int port;
 switch (arg) {
 case 130:
  port = U16(*ptr);
  if (port < ATOM_IO_NAMES_CNT)
   SDEBUG("   port: %d (%s)\n", port, atom_io_names[port]);
  else
   SDEBUG("   port: %d\n", port);
  if (!port)
   ctx->ctx->io_mode = ATOM_IO_MM;
  else
   ctx->ctx->io_mode = ATOM_IO_IIO | port;
  (*ptr) += 2;
  break;
 case 129:
  ctx->ctx->io_mode = ATOM_IO_PCI;
  (*ptr)++;
  break;
 case 128:
  ctx->ctx->io_mode = ATOM_IO_SYSIO;
  (*ptr)++;
  break;
 }
}
