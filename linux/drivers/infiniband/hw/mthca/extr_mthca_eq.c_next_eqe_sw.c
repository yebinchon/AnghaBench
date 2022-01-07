
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_eqe {int owner; } ;
struct mthca_eq {int cons_index; } ;


 int MTHCA_EQ_ENTRY_OWNER_HW ;
 struct mthca_eqe* get_eqe (struct mthca_eq*,int ) ;

__attribute__((used)) static inline struct mthca_eqe *next_eqe_sw(struct mthca_eq *eq)
{
 struct mthca_eqe *eqe;
 eqe = get_eqe(eq, eq->cons_index);
 return (MTHCA_EQ_ENTRY_OWNER_HW & eqe->owner) ? ((void*)0) : eqe;
}
