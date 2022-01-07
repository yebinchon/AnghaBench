
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccp_sg_workarea {scalar_t__ bytes_left; scalar_t__ sg_used; TYPE_1__* sg; } ;
struct ccp_dm_workarea {unsigned int length; int address; } ;
struct ccp_data {struct ccp_dm_workarea dm_wa; struct ccp_sg_workarea sg_wa; } ;
struct TYPE_2__ {scalar_t__ length; } ;


 int ccp_update_sg_workarea (struct ccp_sg_workarea*,unsigned int) ;
 int memset (int ,int ,unsigned int) ;
 unsigned int min (scalar_t__,unsigned int) ;
 unsigned int min_t (int ,scalar_t__,unsigned int) ;
 int scatterwalk_map_and_copy (int ,TYPE_1__*,scalar_t__,unsigned int,unsigned int) ;
 int u64 ;

__attribute__((used)) static unsigned int ccp_queue_buf(struct ccp_data *data, unsigned int from)
{
 struct ccp_sg_workarea *sg_wa = &data->sg_wa;
 struct ccp_dm_workarea *dm_wa = &data->dm_wa;
 unsigned int buf_count, nbytes;


 if (!from)
  memset(dm_wa->address, 0, dm_wa->length);

 if (!sg_wa->sg)
  return 0;





 nbytes = min_t(u64, sg_wa->bytes_left, dm_wa->length);
 scatterwalk_map_and_copy(dm_wa->address, sg_wa->sg, sg_wa->sg_used,
     nbytes, from);


 buf_count = 0;
 while (sg_wa->bytes_left && (buf_count < dm_wa->length)) {
  nbytes = min(sg_wa->sg->length - sg_wa->sg_used,
        dm_wa->length - buf_count);
  nbytes = min_t(u64, sg_wa->bytes_left, nbytes);

  buf_count += nbytes;
  ccp_update_sg_workarea(sg_wa, nbytes);
 }

 return buf_count;
}
