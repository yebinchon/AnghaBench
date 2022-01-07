
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ IPCMxDR (int,int) ;
 scalar_t__ IPCMxSEND (int) ;
 scalar_t__ ipc_base ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void __ipc_send(int mbox, u32 *data)
{
 int i;
 for (i = 0; i < 7; i++)
  writel_relaxed(data[i], ipc_base + IPCMxDR(mbox, i));
 writel_relaxed(0x1, ipc_base + IPCMxSEND(mbox));
}
