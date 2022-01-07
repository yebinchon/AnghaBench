
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct ti_sci_inta_vint_desc {int event_map; int vint_id; TYPE_1__* domain; } ;
struct ti_sci_inta_irq_domain {int vint_mutex; int global_event; TYPE_4__* pdev; TYPE_5__* sci; } ;
struct ti_sci_inta_event_desc {scalar_t__ hwirq; int global_event; int vint_bit; } ;
struct TYPE_7__ {int (* free_event_map ) (TYPE_5__*,int ,int ,int ,int ,int ,int ) ;} ;
struct TYPE_8__ {TYPE_2__ rm_irq_ops; } ;
struct TYPE_10__ {TYPE_3__ ops; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_6__ {struct ti_sci_inta_irq_domain* host_data; } ;


 int HWIRQ_TO_DEVID (int ) ;
 int HWIRQ_TO_IRQID (int ) ;
 int TI_SCI_RESOURCE_NULL ;
 int clear_bit (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_5__*,int ,int ,int ,int ,int ,int ) ;
 int ti_sci_inta_free_parent_irq (struct ti_sci_inta_irq_domain*,struct ti_sci_inta_vint_desc*) ;
 int ti_sci_release_resource (int ,int ) ;
 struct ti_sci_inta_vint_desc* to_vint_desc (struct ti_sci_inta_event_desc*,int ) ;

__attribute__((used)) static void ti_sci_inta_free_irq(struct ti_sci_inta_event_desc *event_desc,
     u32 hwirq)
{
 struct ti_sci_inta_vint_desc *vint_desc;
 struct ti_sci_inta_irq_domain *inta;

 vint_desc = to_vint_desc(event_desc, event_desc->vint_bit);
 inta = vint_desc->domain->host_data;

 mutex_lock(&inta->vint_mutex);
 inta->sci->ops.rm_irq_ops.free_event_map(inta->sci,
       HWIRQ_TO_DEVID(hwirq),
       HWIRQ_TO_IRQID(hwirq),
       inta->pdev->id,
       vint_desc->vint_id,
       event_desc->global_event,
       event_desc->vint_bit);

 clear_bit(event_desc->vint_bit, vint_desc->event_map);
 ti_sci_release_resource(inta->global_event, event_desc->global_event);
 event_desc->global_event = TI_SCI_RESOURCE_NULL;
 event_desc->hwirq = 0;

 ti_sci_inta_free_parent_irq(inta, vint_desc);
 mutex_unlock(&inta->vint_mutex);
}
