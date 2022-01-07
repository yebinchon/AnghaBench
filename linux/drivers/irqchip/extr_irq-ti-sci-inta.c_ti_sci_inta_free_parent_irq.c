
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_inta_vint_desc {int parent_virq; int vint_id; int list; int event_map; } ;
struct ti_sci_inta_irq_domain {int vint; } ;


 scalar_t__ MAX_EVENTS_PER_VINT ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int irq_dispose_mapping (int ) ;
 int kfree (struct ti_sci_inta_vint_desc*) ;
 int list_del (int *) ;
 int ti_sci_release_resource (int ,int ) ;

__attribute__((used)) static void ti_sci_inta_free_parent_irq(struct ti_sci_inta_irq_domain *inta,
     struct ti_sci_inta_vint_desc *vint_desc)
{
 if (find_first_bit(vint_desc->event_map, MAX_EVENTS_PER_VINT) == MAX_EVENTS_PER_VINT) {
  list_del(&vint_desc->list);
  ti_sci_release_resource(inta->vint, vint_desc->vint_id);
  irq_dispose_mapping(vint_desc->parent_virq);
  kfree(vint_desc);
 }
}
