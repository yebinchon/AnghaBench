
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pic {scalar_t__ base; } ;


 scalar_t__ PIC_CAUSE ;
 scalar_t__ PIC_MASK ;
 int PIC_MAX_IRQ_MASK ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mvebu_pic_reset(struct mvebu_pic *pic)
{

 writel(0, pic->base + PIC_MASK);
 writel(PIC_MAX_IRQ_MASK, pic->base + PIC_CAUSE);
}
