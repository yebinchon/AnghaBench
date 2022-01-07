
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_exti_host_data {struct stm32_exti_host_data* chips_data; int base; struct stm32_exti_drv_data const* drv_data; } ;
struct stm32_exti_drv_data {int bank_nr; } ;
struct stm32_exti_chip_data {int dummy; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 struct stm32_exti_host_data* kcalloc (int ,int,int ) ;
 int kfree (struct stm32_exti_host_data*) ;
 struct stm32_exti_host_data* kzalloc (int,int ) ;
 int of_iomap (struct device_node*,int ) ;
 int pr_err (char*,struct device_node*) ;
 struct stm32_exti_host_data* stm32_host_data ;

__attribute__((used)) static struct
stm32_exti_host_data *stm32_exti_host_init(const struct stm32_exti_drv_data *dd,
        struct device_node *node)
{
 struct stm32_exti_host_data *host_data;

 host_data = kzalloc(sizeof(*host_data), GFP_KERNEL);
 if (!host_data)
  return ((void*)0);

 host_data->drv_data = dd;
 host_data->chips_data = kcalloc(dd->bank_nr,
     sizeof(struct stm32_exti_chip_data),
     GFP_KERNEL);
 if (!host_data->chips_data)
  goto free_host_data;

 host_data->base = of_iomap(node, 0);
 if (!host_data->base) {
  pr_err("%pOF: Unable to map registers\n", node);
  goto free_chips_data;
 }

 stm32_host_data = host_data;

 return host_data;

free_chips_data:
 kfree(host_data->chips_data);
free_host_data:
 kfree(host_data);

 return ((void*)0);
}
