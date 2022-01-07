
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct ccp_dm_workarea {int* address; } ;


 int ccp_get_dm_area (struct ccp_dm_workarea*,unsigned int,struct scatterlist*,unsigned int,unsigned int) ;

__attribute__((used)) static void ccp_reverse_get_dm_area(struct ccp_dm_workarea *wa,
        unsigned int wa_offset,
        struct scatterlist *sg,
        unsigned int sg_offset,
        unsigned int len)
{
 u8 *p, *q;

 p = wa->address + wa_offset;
 q = p + len - 1;
 while (p < q) {
  *p = *p ^ *q;
  *q = *p ^ *q;
  *p = *p ^ *q;
  p++;
  q--;
 }

 ccp_get_dm_area(wa, wa_offset, sg, sg_offset, len);
}
