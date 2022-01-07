
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_mtu { ____Placeholder_pvrdma_mtu } pvrdma_mtu ;
typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;



__attribute__((used)) static inline enum pvrdma_mtu ib_mtu_to_pvrdma(enum ib_mtu mtu)
{
 return (enum pvrdma_mtu)mtu;
}
