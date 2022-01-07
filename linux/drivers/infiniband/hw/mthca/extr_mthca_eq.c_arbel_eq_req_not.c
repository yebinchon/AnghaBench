
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int eq_arm; } ;
struct TYPE_4__ {TYPE_1__ arbel; } ;
struct mthca_dev {TYPE_2__ eq_regs; } ;


 int writel (int ,int ) ;

__attribute__((used)) static inline void arbel_eq_req_not(struct mthca_dev *dev, u32 eqn_mask)
{
 writel(eqn_mask, dev->eq_regs.arbel.eq_arm);
}
