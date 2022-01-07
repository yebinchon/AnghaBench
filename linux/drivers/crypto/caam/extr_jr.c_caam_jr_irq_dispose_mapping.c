
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_dispose_mapping (unsigned long) ;

__attribute__((used)) static void caam_jr_irq_dispose_mapping(void *data)
{
 irq_dispose_mapping((unsigned long)data);
}
