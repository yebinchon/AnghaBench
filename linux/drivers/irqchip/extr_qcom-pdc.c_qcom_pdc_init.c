
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int ENXIO ;
 int PDC_MAX_IRQS ;
 int iounmap (int ) ;
 struct irq_domain* irq_domain_create_hierarchy (struct irq_domain*,int ,int ,int ,int *,int *) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 int kfree (int ) ;
 int of_fwnode_handle (struct device_node*) ;
 int of_iomap (struct device_node*,int ) ;
 int pdc_base ;
 int pdc_region ;
 int pdc_setup_pin_mapping (struct device_node*) ;
 int pr_err (char*,struct device_node*) ;
 int qcom_pdc_ops ;

__attribute__((used)) static int qcom_pdc_init(struct device_node *node, struct device_node *parent)
{
 struct irq_domain *parent_domain, *pdc_domain;
 int ret;

 pdc_base = of_iomap(node, 0);
 if (!pdc_base) {
  pr_err("%pOF: unable to map PDC registers\n", node);
  return -ENXIO;
 }

 parent_domain = irq_find_host(parent);
 if (!parent_domain) {
  pr_err("%pOF: unable to find PDC's parent domain\n", node);
  ret = -ENXIO;
  goto fail;
 }

 ret = pdc_setup_pin_mapping(node);
 if (ret) {
  pr_err("%pOF: failed to init PDC pin-hwirq mapping\n", node);
  goto fail;
 }

 pdc_domain = irq_domain_create_hierarchy(parent_domain, 0, PDC_MAX_IRQS,
       of_fwnode_handle(node),
       &qcom_pdc_ops, ((void*)0));
 if (!pdc_domain) {
  pr_err("%pOF: GIC domain add failed\n", node);
  ret = -ENOMEM;
  goto fail;
 }

 return 0;

fail:
 kfree(pdc_region);
 iounmap(pdc_base);
 return ret;
}
