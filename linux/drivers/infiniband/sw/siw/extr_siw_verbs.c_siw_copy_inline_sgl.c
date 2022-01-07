
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_sqe {int num_sge; TYPE_1__* sge; } ;
struct ib_sge {scalar_t__ length; scalar_t__ addr; } ;
struct ib_send_wr {int num_sge; struct ib_sge* sg_list; } ;
struct TYPE_2__ {uintptr_t laddr; int length; scalar_t__ lkey; } ;


 int EINVAL ;
 int SIW_MAX_INLINE ;
 int memcpy (void*,void*,scalar_t__) ;

__attribute__((used)) static int siw_copy_inline_sgl(const struct ib_send_wr *core_wr,
          struct siw_sqe *sqe)
{
 struct ib_sge *core_sge = core_wr->sg_list;
 void *kbuf = &sqe->sge[1];
 int num_sge = core_wr->num_sge, bytes = 0;

 sqe->sge[0].laddr = (uintptr_t)kbuf;
 sqe->sge[0].lkey = 0;

 while (num_sge--) {
  if (!core_sge->length) {
   core_sge++;
   continue;
  }
  bytes += core_sge->length;
  if (bytes > SIW_MAX_INLINE) {
   bytes = -EINVAL;
   break;
  }
  memcpy(kbuf, (void *)(uintptr_t)core_sge->addr,
         core_sge->length);

  kbuf += core_sge->length;
  core_sge++;
 }
 sqe->sge[0].length = bytes > 0 ? bytes : 0;
 sqe->num_sge = bytes > 0 ? 1 : 0;

 return bytes;
}
