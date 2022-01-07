
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coh901318_lli {scalar_t__ link_addr; scalar_t__ virt_link_addr; } ;



__attribute__((used)) static struct coh901318_lli *
coh901318_lli_next(struct coh901318_lli *data)
{
 if (data == ((void*)0) || data->link_addr == 0)
  return ((void*)0);

 return (struct coh901318_lli *) data->virt_link_addr;
}
