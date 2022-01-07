
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {int dummy; } ;


 int CONTEXT_DEAD ;
 int CONTROL_SET (unsigned int) ;
 int * evts ;
 int ohci_err (struct fw_ohci*,char*,char const*,int ) ;
 int reg_read (struct fw_ohci*,int ) ;

__attribute__((used)) static void detect_dead_context(struct fw_ohci *ohci,
    const char *name, unsigned int regs)
{
 u32 ctl;

 ctl = reg_read(ohci, CONTROL_SET(regs));
 if (ctl & CONTEXT_DEAD)
  ohci_err(ohci, "DMA context %s has stopped, error code: %s\n",
   name, evts[ctl & 0x1f]);
}
