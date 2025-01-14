
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct scatterlist {int length; } ;
struct cpt_request_info {TYPE_1__* out; int rlen; } ;
struct TYPE_2__ {size_t size; void* vptr; } ;


 size_t min (size_t,int ) ;
 int * sg_virt (struct scatterlist*) ;

__attribute__((used)) static inline void update_output_data(struct cpt_request_info *req_info,
          struct scatterlist *outp_sg,
          u32 nbytes, u32 *argcnt)
{
 req_info->rlen += nbytes;

 while (nbytes) {
  u32 len = min(nbytes, outp_sg->length);
  u8 *ptr = sg_virt(outp_sg);

  req_info->out[*argcnt].vptr = (void *)ptr;
  req_info->out[*argcnt].size = len;
  nbytes -= len;
  ++(*argcnt);
  ++outp_sg;
 }
}
