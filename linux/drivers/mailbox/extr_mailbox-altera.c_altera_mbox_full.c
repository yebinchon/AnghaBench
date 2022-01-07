
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_mbox {scalar_t__ mbox_base; } ;


 scalar_t__ MAILBOX_STS_REG ;
 int MBOX_FULL (int ) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline int altera_mbox_full(struct altera_mbox *mbox)
{
 u32 status;

 status = readl_relaxed(mbox->mbox_base + MAILBOX_STS_REG);
 return MBOX_FULL(status);
}
