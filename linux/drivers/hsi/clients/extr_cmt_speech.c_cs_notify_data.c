
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int dataind_pending; int lock; int dataind_queue; TYPE_1__* cl; } ;
struct TYPE_3__ {int device; } ;


 TYPE_2__ cs_char_data ;
 int cs_notify (int ,int *) ;
 int cs_pop_entry (int *) ;
 int dev_dbg (int *,char*,int) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cs_notify_data(u32 message, int maxlength)
{
 cs_notify(message, &cs_char_data.dataind_queue);

 spin_lock(&cs_char_data.lock);
 cs_char_data.dataind_pending++;
 while (cs_char_data.dataind_pending > maxlength &&
    !list_empty(&cs_char_data.dataind_queue)) {
  dev_dbg(&cs_char_data.cl->device, "data notification "
  "queue overrun (%u entries)\n", cs_char_data.dataind_pending);

  cs_pop_entry(&cs_char_data.dataind_queue);
  cs_char_data.dataind_pending--;
 }
 spin_unlock(&cs_char_data.lock);
}
