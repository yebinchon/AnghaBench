
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ccp_sg_workarea {unsigned int bytes_left; scalar_t__ sg_used; TYPE_1__* sg; } ;
struct TYPE_3__ {scalar_t__ length; } ;


 unsigned int min_t (int ,unsigned int,unsigned int) ;
 TYPE_1__* sg_next (TYPE_1__*) ;
 int u64 ;

__attribute__((used)) static void ccp_update_sg_workarea(struct ccp_sg_workarea *wa, unsigned int len)
{
 unsigned int nbytes = min_t(u64, len, wa->bytes_left);

 if (!wa->sg)
  return;

 wa->sg_used += nbytes;
 wa->bytes_left -= nbytes;
 if (wa->sg_used == wa->sg->length) {
  wa->sg = sg_next(wa->sg);
  wa->sg_used = 0;
 }
}
