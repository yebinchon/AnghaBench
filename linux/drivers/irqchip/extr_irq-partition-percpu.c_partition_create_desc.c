
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain_ops {int alloc; int free; int translate; int select; } ;
struct partition_desc {int nr_parts; struct partition_affinity* parts; int chained_desc; int bitmap; struct irq_domain* domain; struct irq_domain_ops ops; } ;
struct partition_affinity {int dummy; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int BITS_TO_LONGS (int) ;
 int BUG_ON (int) ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 struct irq_domain* irq_domain_create_linear (struct fwnode_handle*,int,struct irq_domain_ops*,struct partition_desc*) ;
 int irq_domain_remove (struct irq_domain*) ;
 int irq_to_desc (int) ;
 int kcalloc (int ,int,int ) ;
 int kfree (struct partition_desc*) ;
 struct partition_desc* kzalloc (int,int ) ;
 int partition_domain_alloc ;
 int partition_domain_free ;

struct partition_desc *partition_create_desc(struct fwnode_handle *fwnode,
          struct partition_affinity *parts,
          int nr_parts,
          int chained_irq,
          const struct irq_domain_ops *ops)
{
 struct partition_desc *desc;
 struct irq_domain *d;

 BUG_ON(!ops->select || !ops->translate);

 desc = kzalloc(sizeof(*desc), GFP_KERNEL);
 if (!desc)
  return ((void*)0);

 desc->ops = *ops;
 desc->ops.free = partition_domain_free;
 desc->ops.alloc = partition_domain_alloc;

 d = irq_domain_create_linear(fwnode, nr_parts, &desc->ops, desc);
 if (!d)
  goto out;
 desc->domain = d;

 desc->bitmap = kcalloc(BITS_TO_LONGS(nr_parts), sizeof(long),
          GFP_KERNEL);
 if (WARN_ON(!desc->bitmap))
  goto out;

 desc->chained_desc = irq_to_desc(chained_irq);
 desc->nr_parts = nr_parts;
 desc->parts = parts;

 return desc;
out:
 if (d)
  irq_domain_remove(d);
 kfree(desc);

 return ((void*)0);
}
