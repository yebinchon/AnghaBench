
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVRDMA_MASK (int ) ;
 int PVRDMA_SEND_FLAGS_MAX ;

__attribute__((used)) static inline int ib_send_flags_to_pvrdma(int flags)
{
 return flags & PVRDMA_MASK(PVRDMA_SEND_FLAGS_MAX);
}
