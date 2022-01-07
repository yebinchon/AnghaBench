
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cppi41_desc {int pd0; } ;


 int DESC_TYPE ;
 int DESC_TYPE_TEARD ;

__attribute__((used)) static void cppi41_compute_td_desc(struct cppi41_desc *d)
{
 d->pd0 = DESC_TYPE_TEARD << DESC_TYPE;
}
