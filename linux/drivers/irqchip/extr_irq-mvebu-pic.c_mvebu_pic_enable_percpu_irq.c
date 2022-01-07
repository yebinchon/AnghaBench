
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pic {int parent_irq; } ;


 int IRQ_TYPE_NONE ;
 int enable_percpu_irq (int ,int ) ;
 int mvebu_pic_reset (struct mvebu_pic*) ;

__attribute__((used)) static void mvebu_pic_enable_percpu_irq(void *data)
{
 struct mvebu_pic *pic = data;

 mvebu_pic_reset(pic);
 enable_percpu_irq(pic->parent_irq, IRQ_TYPE_NONE);
}
