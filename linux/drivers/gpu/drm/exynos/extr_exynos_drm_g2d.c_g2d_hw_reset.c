
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_data {int flags; scalar_t__ regs; } ;


 int G2D_BIT_ENGINE_BUSY ;
 int G2D_R ;
 int G2D_SFRCLEAR ;
 scalar_t__ G2D_SOFT_RESET ;
 int clear_bit (int ,int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void g2d_hw_reset(struct g2d_data *g2d)
{
 writel(G2D_R | G2D_SFRCLEAR, g2d->regs + G2D_SOFT_RESET);
 clear_bit(G2D_BIT_ENGINE_BUSY, &g2d->flags);
}
