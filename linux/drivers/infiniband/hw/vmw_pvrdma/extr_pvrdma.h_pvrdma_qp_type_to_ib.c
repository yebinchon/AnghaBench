
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_qp_type { ____Placeholder_pvrdma_qp_type } pvrdma_qp_type ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;



__attribute__((used)) static inline enum ib_qp_type pvrdma_qp_type_to_ib(enum pvrdma_qp_type type)
{
 return (enum ib_qp_type)type;
}
