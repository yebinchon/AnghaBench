
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pic {int parent_irq; } ;


 int disable_percpu_irq (int ) ;

__attribute__((used)) static void mvebu_pic_disable_percpu_irq(void *data)
{
 struct mvebu_pic *pic = data;

 disable_percpu_irq(pic->parent_irq);
}
