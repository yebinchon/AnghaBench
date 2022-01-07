
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sgl; } ;
struct hsi_msg {TYPE_1__ sgt; } ;


 int GFP_KERNEL ;
 struct hsi_msg* hsi_alloc_msg (int,int ) ;
 int hsi_free_msg (struct hsi_msg*) ;
 void* kmalloc (unsigned int,int ) ;
 int kmemleak_ignore (void*) ;
 int sg_init_one (int ,void*,unsigned int) ;

__attribute__((used)) static inline struct hsi_msg *hsc_msg_alloc(unsigned int alloc_size)
{
 struct hsi_msg *msg;
 void *buf;

 msg = hsi_alloc_msg(1, GFP_KERNEL);
 if (!msg)
  goto out;
 buf = kmalloc(alloc_size, GFP_KERNEL);
 if (!buf) {
  hsi_free_msg(msg);
  goto out;
 }
 sg_init_one(msg->sgt.sgl, buf, alloc_size);

 kmemleak_ignore(buf);

 return msg;
out:
 return ((void*)0);
}
