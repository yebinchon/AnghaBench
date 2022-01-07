
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ IPCMxDR (int,int) ;
 scalar_t__ ipc_base ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 __ipc_rcv(int mbox, u32 *data)
{
 int i;
 for (i = 0; i < 7; i++)
  data[i] = readl_relaxed(ipc_base + IPCMxDR(mbox, i));
 return data[1];
}
