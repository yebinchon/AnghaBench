
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int dummy; } ;
struct ar_context {int regs; struct fw_ohci* ohci; } ;


 int CONTEXT_RUN ;
 int CONTROL_CLEAR (int ) ;
 int flush_writes (struct fw_ohci*) ;
 int ohci_err (struct fw_ohci*,char*,char const*) ;
 int reg_read (struct fw_ohci*,int ) ;
 int reg_write (struct fw_ohci*,int ,int) ;

__attribute__((used)) static void ar_context_abort(struct ar_context *ctx, const char *error_msg)
{
 struct fw_ohci *ohci = ctx->ohci;

 if (reg_read(ohci, CONTROL_CLEAR(ctx->regs)) & CONTEXT_RUN) {
  reg_write(ohci, CONTROL_CLEAR(ctx->regs), CONTEXT_RUN);
  flush_writes(ohci);

  ohci_err(ohci, "AR error: %s; DMA stopped\n", error_msg);
 }

}
