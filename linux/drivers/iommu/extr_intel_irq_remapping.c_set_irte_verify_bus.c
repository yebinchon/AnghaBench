
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irte {int dummy; } ;


 int SQ_ALL_16 ;
 int SVT_VERIFY_BUS ;
 int set_irte_sid (struct irte*,int ,int ,unsigned int) ;

__attribute__((used)) static void set_irte_verify_bus(struct irte *irte, unsigned int start_bus,
    unsigned int end_bus)
{
 set_irte_sid(irte, SVT_VERIFY_BUS, SQ_ALL_16,
       (start_bus << 8) | end_bus);
}
