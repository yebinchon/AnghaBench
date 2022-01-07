
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {int dummy; } ;
struct context {int running; int regs; struct fw_ohci* ohci; } ;


 int CONTEXT_ACTIVE ;
 int CONTEXT_RUN ;
 int CONTROL_CLEAR (int ) ;
 int CONTROL_SET (int ) ;
 int ohci_err (struct fw_ohci*,char*,int) ;
 int reg_read (struct fw_ohci*,int ) ;
 int reg_write (struct fw_ohci*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void context_stop(struct context *ctx)
{
 struct fw_ohci *ohci = ctx->ohci;
 u32 reg;
 int i;

 reg_write(ohci, CONTROL_CLEAR(ctx->regs), CONTEXT_RUN);
 ctx->running = 0;

 for (i = 0; i < 1000; i++) {
  reg = reg_read(ohci, CONTROL_SET(ctx->regs));
  if ((reg & CONTEXT_ACTIVE) == 0)
   return;

  if (i)
   udelay(10);
 }
 ohci_err(ohci, "DMA context still active (0x%08x)\n", reg);
}
