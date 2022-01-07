
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_filedata {int dummy; } ;
struct hfi1_ctxtdata {int dummy; } ;


 int hfi1_user_exp_rcv_init (struct hfi1_filedata*,struct hfi1_ctxtdata*) ;
 int hfi1_user_sdma_alloc_queues (struct hfi1_ctxtdata*,struct hfi1_filedata*) ;
 int hfi1_user_sdma_free_queues (struct hfi1_filedata*,struct hfi1_ctxtdata*) ;

__attribute__((used)) static int init_user_ctxt(struct hfi1_filedata *fd,
     struct hfi1_ctxtdata *uctxt)
{
 int ret;

 ret = hfi1_user_sdma_alloc_queues(uctxt, fd);
 if (ret)
  return ret;

 ret = hfi1_user_exp_rcv_init(fd, uctxt);
 if (ret)
  hfi1_user_sdma_free_queues(fd, uctxt);

 return ret;
}
