
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irte {int present; int vector; int redir_hint; int dest_id; int dlvry_mode; scalar_t__ trigger_mode; int dst_mode; } ;
struct TYPE_2__ {int irq_delivery_mode; int irq_dest_mode; } ;


 int IRTE_DEST (unsigned int) ;
 TYPE_1__* apic ;
 int memset (struct irte*,int ,int) ;

__attribute__((used)) static void prepare_irte(struct irte *irte, int vector, unsigned int dest)
{
 memset(irte, 0, sizeof(*irte));

 irte->present = 1;
 irte->dst_mode = apic->irq_dest_mode;







 irte->trigger_mode = 0;
 irte->dlvry_mode = apic->irq_delivery_mode;
 irte->vector = vector;
 irte->dest_id = IRTE_DEST(dest);
 irte->redir_hint = 1;
}
