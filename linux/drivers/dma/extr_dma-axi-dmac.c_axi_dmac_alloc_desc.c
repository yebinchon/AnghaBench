
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axi_dmac_desc {unsigned int num_sgs; TYPE_1__* sg; } ;
struct TYPE_2__ {int id; } ;


 int AXI_DMAC_SG_UNUSED ;
 int GFP_NOWAIT ;
 struct axi_dmac_desc* kzalloc (int ,int ) ;
 int sg ;
 int struct_size (struct axi_dmac_desc*,int ,unsigned int) ;

__attribute__((used)) static struct axi_dmac_desc *axi_dmac_alloc_desc(unsigned int num_sgs)
{
 struct axi_dmac_desc *desc;
 unsigned int i;

 desc = kzalloc(struct_size(desc, sg, num_sgs), GFP_NOWAIT);
 if (!desc)
  return ((void*)0);

 for (i = 0; i < num_sgs; i++)
  desc->sg[i].id = AXI_DMAC_SG_UNUSED;

 desc->num_sgs = num_sgs;

 return desc;
}
