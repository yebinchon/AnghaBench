
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVRDMA_MASK (int ) ;
 int PVRDMA_PORT_CAP_FLAGS_MAX ;

__attribute__((used)) static inline int ib_port_cap_flags_to_pvrdma(int flags)
{
 return flags & PVRDMA_MASK(PVRDMA_PORT_CAP_FLAGS_MAX);
}
