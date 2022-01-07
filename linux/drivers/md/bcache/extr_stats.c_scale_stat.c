
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int accounting_weight ;
 unsigned long ewma_add (unsigned long,int ,int ,int ) ;

__attribute__((used)) static void scale_stat(unsigned long *stat)
{
 *stat = ewma_add(*stat, 0, accounting_weight, 0);
}
