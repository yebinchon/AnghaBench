
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int base; int label; struct device_node* of_node; } ;
struct of_mm_gpio_chip {int regs; struct gpio_chip gc; int (* save_regs ) (struct of_mm_gpio_chip*) ;} ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gpiochip_add_data (struct gpio_chip*,void*) ;
 int iounmap (int ) ;
 int kasprintf (int ,char*,struct device_node*) ;
 int kfree (int ) ;
 int of_iomap (struct device_node*,int ) ;
 int pr_err (char*,struct device_node*,int) ;
 int stub1 (struct of_mm_gpio_chip*) ;

int of_mm_gpiochip_add_data(struct device_node *np,
       struct of_mm_gpio_chip *mm_gc,
       void *data)
{
 int ret = -ENOMEM;
 struct gpio_chip *gc = &mm_gc->gc;

 gc->label = kasprintf(GFP_KERNEL, "%pOF", np);
 if (!gc->label)
  goto err0;

 mm_gc->regs = of_iomap(np, 0);
 if (!mm_gc->regs)
  goto err1;

 gc->base = -1;

 if (mm_gc->save_regs)
  mm_gc->save_regs(mm_gc);

 mm_gc->gc.of_node = np;

 ret = gpiochip_add_data(gc, data);
 if (ret)
  goto err2;

 return 0;
err2:
 iounmap(mm_gc->regs);
err1:
 kfree(gc->label);
err0:
 pr_err("%pOF: GPIO chip registration failed with status %d\n", np, ret);
 return ret;
}
