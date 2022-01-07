
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct picolcd_data {int status; int rc_dev; int lock; } ;
struct ir_raw_event {int pulse; int duration; } ;
struct hid_report {int dummy; } ;


 int PICOLCD_CIR_SHUN ;
 int US_TO_NS (int) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_store (int ,struct ir_raw_event*) ;
 int min (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int picolcd_raw_cir(struct picolcd_data *data,
  struct hid_report *report, u8 *raw_data, int size)
{
 unsigned long flags;
 int i, w, sz;
 struct ir_raw_event rawir = {};


 spin_lock_irqsave(&data->lock, flags);
 if (!data->rc_dev || (data->status & PICOLCD_CIR_SHUN)) {
  spin_unlock_irqrestore(&data->lock, flags);
  return 1;
 }
 spin_unlock_irqrestore(&data->lock, flags);
 sz = size > 0 ? min((int)raw_data[0], size-1) : 0;
 for (i = 0; i+1 < sz; i += 2) {
  w = (raw_data[i] << 8) | (raw_data[i+1]);
  rawir.pulse = !!(w & 0x8000);
  rawir.duration = US_TO_NS(rawir.pulse ? (65536 - w) : w);

  if (i == 0 && rawir.duration > 15000000)
   rawir.duration -= 15000000;
  ir_raw_event_store(data->rc_dev, &rawir);
 }
 ir_raw_event_handle(data->rc_dev);

 return 1;
}
