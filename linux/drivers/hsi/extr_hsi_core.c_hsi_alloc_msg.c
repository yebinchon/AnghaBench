
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int sgt; } ;
typedef int gfp_t ;


 int kfree (struct hsi_msg*) ;
 struct hsi_msg* kzalloc (int,int ) ;
 int sg_alloc_table (int *,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

struct hsi_msg *hsi_alloc_msg(unsigned int nents, gfp_t flags)
{
 struct hsi_msg *msg;
 int err;

 msg = kzalloc(sizeof(*msg), flags);
 if (!msg)
  return ((void*)0);

 if (!nents)
  return msg;

 err = sg_alloc_table(&msg->sgt, nents, flags);
 if (unlikely(err)) {
  kfree(msg);
  msg = ((void*)0);
 }

 return msg;
}
