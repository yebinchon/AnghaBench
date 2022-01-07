
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsi_msg {int status; } ;
struct cs_hsi_iface {TYPE_1__* cl; int lock; } ;
struct TYPE_2__ {int device; } ;


 int dev_err (int *,char*,char const*,int ,unsigned int) ;
 int spin_lock (int *) ;

__attribute__((used)) static inline void __cs_hsi_error_pre(struct cs_hsi_iface *hi,
     struct hsi_msg *msg, const char *info,
     unsigned int *state)
{
 spin_lock(&hi->lock);
 dev_err(&hi->cl->device, "HSI %s error, msg %d, state %u\n",
  info, msg->status, *state);
}
