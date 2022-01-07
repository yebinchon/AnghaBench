
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAN_MASK (int) ;
 scalar_t__ IPCMxDCLEAR (int) ;
 scalar_t__ IPCMxMCLEAR (int) ;
 scalar_t__ ipc_base ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void clear_destination(int source, int mbox)
{
 writel_relaxed(CHAN_MASK(source), ipc_base + IPCMxDCLEAR(mbox));
 writel_relaxed(CHAN_MASK(source), ipc_base + IPCMxMCLEAR(mbox));
}
