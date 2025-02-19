
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ti_sci_inta_vint_desc {unsigned int parent_virq; int list; scalar_t__ vint_id; struct irq_domain* domain; } ;
struct ti_sci_inta_irq_domain {int vint_list; TYPE_1__* pdev; int vint; } ;
struct irq_fwspec {int param_count; scalar_t__* param; int fwnode; } ;
struct irq_domain {struct ti_sci_inta_irq_domain* host_data; } ;
struct TYPE_2__ {scalar_t__ id; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ti_sci_inta_vint_desc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ TI_SCI_RESOURCE_NULL ;
 int dev_of_node (int *) ;
 unsigned int irq_create_fwspec_mapping (struct irq_fwspec*) ;
 int irq_set_chained_handler_and_data (unsigned int,int ,struct ti_sci_inta_vint_desc*) ;
 int kfree (struct ti_sci_inta_vint_desc*) ;
 struct ti_sci_inta_vint_desc* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int of_irq_find_parent (int ) ;
 int of_node_to_fwnode (int ) ;
 scalar_t__ ti_sci_get_free_resource (int ) ;
 int ti_sci_inta_irq_handler ;

__attribute__((used)) static struct ti_sci_inta_vint_desc *ti_sci_inta_alloc_parent_irq(struct irq_domain *domain)
{
 struct ti_sci_inta_irq_domain *inta = domain->host_data;
 struct ti_sci_inta_vint_desc *vint_desc;
 struct irq_fwspec parent_fwspec;
 unsigned int parent_virq;
 u16 vint_id;

 vint_id = ti_sci_get_free_resource(inta->vint);
 if (vint_id == TI_SCI_RESOURCE_NULL)
  return ERR_PTR(-EINVAL);

 vint_desc = kzalloc(sizeof(*vint_desc), GFP_KERNEL);
 if (!vint_desc)
  return ERR_PTR(-ENOMEM);

 vint_desc->domain = domain;
 vint_desc->vint_id = vint_id;
 INIT_LIST_HEAD(&vint_desc->list);

 parent_fwspec.fwnode = of_node_to_fwnode(of_irq_find_parent(dev_of_node(&inta->pdev->dev)));
 parent_fwspec.param_count = 2;
 parent_fwspec.param[0] = inta->pdev->id;
 parent_fwspec.param[1] = vint_desc->vint_id;

 parent_virq = irq_create_fwspec_mapping(&parent_fwspec);
 if (parent_virq == 0) {
  kfree(vint_desc);
  return ERR_PTR(-EINVAL);
 }
 vint_desc->parent_virq = parent_virq;

 list_add_tail(&vint_desc->list, &inta->vint_list);
 irq_set_chained_handler_and_data(vint_desc->parent_virq,
      ti_sci_inta_irq_handler, vint_desc);

 return vint_desc;
}
