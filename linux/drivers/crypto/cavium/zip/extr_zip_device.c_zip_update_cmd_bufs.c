
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct zip_device {TYPE_1__* iq; } ;
struct TYPE_2__ {int free_flag; int hw_tail; int sw_head; int lock; int pend_cnt; int sw_tail; int done_cnt; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zip_dbg (char*,...) ;

void zip_update_cmd_bufs(struct zip_device *zip_dev, u32 queue)
{

 spin_lock(&zip_dev->iq[queue].lock);


 if (zip_dev->iq[queue].free_flag == 1) {
  zip_dbg("Free flag. Free cmd buffer, adjust sw head and tail");

  zip_dev->iq[queue].free_flag = 0;


  zip_dev->iq[queue].hw_tail = zip_dev->iq[queue].sw_head;
 } else {
  zip_dbg("Free flag not set. increment hw tail");
  zip_dev->iq[queue].hw_tail += 16;
 }

 zip_dev->iq[queue].done_cnt++;
 zip_dev->iq[queue].pend_cnt--;

 zip_dbg("sw_head :0x%lx sw_tail :0x%lx hw_tail :0x%lx",
  zip_dev->iq[queue].sw_head, zip_dev->iq[queue].sw_tail,
  zip_dev->iq[queue].hw_tail);
 zip_dbg(" Got CC : pend_cnt : %d\n", zip_dev->iq[queue].pend_cnt);

 spin_unlock(&zip_dev->iq[queue].lock);
}
