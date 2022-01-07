
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ccp_dm_workarea {unsigned int length; scalar_t__ address; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 int scatterwalk_map_and_copy (scalar_t__,struct scatterlist*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int ccp_set_dm_area(struct ccp_dm_workarea *wa, unsigned int wa_offset,
      struct scatterlist *sg, unsigned int sg_offset,
      unsigned int len)
{
 WARN_ON(!wa->address);

 if (len > (wa->length - wa_offset))
  return -EINVAL;

 scatterwalk_map_and_copy(wa->address + wa_offset, sg, sg_offset, len,
     0);
 return 0;
}
