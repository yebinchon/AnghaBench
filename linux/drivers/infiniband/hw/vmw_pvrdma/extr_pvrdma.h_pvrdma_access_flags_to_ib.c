
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVRDMA_ACCESS_FLAGS_MAX ;
 int PVRDMA_MASK (int ) ;

__attribute__((used)) static inline int pvrdma_access_flags_to_ib(int flags)
{
 return flags & PVRDMA_MASK(PVRDMA_ACCESS_FLAGS_MAX);
}
