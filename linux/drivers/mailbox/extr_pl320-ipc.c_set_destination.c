
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAN_MASK (int) ;
 scalar_t__ IPCMxDSET (int) ;
 scalar_t__ IPCMxMSET (int) ;
 scalar_t__ ipc_base ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void set_destination(int source, int mbox)
{
 writel_relaxed(CHAN_MASK(source), ipc_base + IPCMxDSET(mbox));
 writel_relaxed(CHAN_MASK(source), ipc_base + IPCMxMSET(mbox));
}
