
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct scatterlist {int length; } ;
struct TYPE_3__ {int dlen; } ;
struct cpt_request_info {TYPE_2__* in; TYPE_1__ req; } ;
struct TYPE_4__ {size_t size; void* vptr; } ;


 size_t min (size_t,int ) ;
 int * sg_virt (struct scatterlist*) ;

__attribute__((used)) static inline void update_input_data(struct cpt_request_info *req_info,
         struct scatterlist *inp_sg,
         u32 nbytes, u32 *argcnt)
{
 req_info->req.dlen += nbytes;

 while (nbytes) {
  u32 len = min(nbytes, inp_sg->length);
  u8 *ptr = sg_virt(inp_sg);

  req_info->in[*argcnt].vptr = (void *)ptr;
  req_info->in[*argcnt].size = len;
  nbytes -= len;

  ++(*argcnt);
  ++inp_sg;
 }
}
