
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_qp_state { ____Placeholder_pvrdma_qp_state } pvrdma_qp_state ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;



__attribute__((used)) static inline enum ib_qp_state pvrdma_qp_state_to_ib(enum pvrdma_qp_state state)
{
 return (enum ib_qp_state)state;
}
