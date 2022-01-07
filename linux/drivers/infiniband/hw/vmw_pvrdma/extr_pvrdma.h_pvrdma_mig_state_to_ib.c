
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_mig_state { ____Placeholder_pvrdma_mig_state } pvrdma_mig_state ;
typedef enum ib_mig_state { ____Placeholder_ib_mig_state } ib_mig_state ;



__attribute__((used)) static inline enum ib_mig_state pvrdma_mig_state_to_ib(
     enum pvrdma_mig_state state)
{
 return (enum ib_mig_state)state;
}
