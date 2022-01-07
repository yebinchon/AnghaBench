
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_eqe {int owner; } ;


 int MTHCA_EQ_ENTRY_OWNER_HW ;

__attribute__((used)) static inline void set_eqe_hw(struct mthca_eqe *eqe)
{
 eqe->owner = MTHCA_EQ_ENTRY_OWNER_HW;
}
