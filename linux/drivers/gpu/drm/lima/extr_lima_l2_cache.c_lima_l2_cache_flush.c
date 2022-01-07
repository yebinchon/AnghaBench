
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct lima_ip {TYPE_1__ data; } ;


 int LIMA_L2_CACHE_COMMAND ;
 int LIMA_L2_CACHE_COMMAND_CLEAR_ALL ;
 int l2_cache_write (int ,int ) ;
 int lima_l2_cache_wait_idle (struct lima_ip*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int lima_l2_cache_flush(struct lima_ip *ip)
{
 int ret;

 spin_lock(&ip->data.lock);
 l2_cache_write(LIMA_L2_CACHE_COMMAND, LIMA_L2_CACHE_COMMAND_CLEAR_ALL);
 ret = lima_l2_cache_wait_idle(ip);
 spin_unlock(&ip->data.lock);
 return ret;
}
