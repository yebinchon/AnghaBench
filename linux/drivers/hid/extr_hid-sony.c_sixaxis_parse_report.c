
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sony_sc {int quirks; int cable_state; int battery_capacity; int battery_charging; int sensor_dev; int lock; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int MOTION_CONTROLLER ;
 int SIXAXIS_CONTROLLER ;
 int SIXAXIS_INPUT_REPORT_ACC_X_OFFSET ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sixaxis_parse_report(struct sony_sc *sc, u8 *rd, int size)
{
 static const u8 sixaxis_battery_capacity[] = { 0, 1, 25, 50, 75, 100 };
 unsigned long flags;
 int offset;
 u8 cable_state, battery_capacity, battery_charging;







 offset = (sc->quirks & MOTION_CONTROLLER) ? 12 : 30;

 if (rd[offset] >= 0xee) {
  battery_capacity = 100;
  battery_charging = !(rd[offset] & 0x01);
  cable_state = 1;
 } else {
  u8 index = rd[offset] <= 5 ? rd[offset] : 5;
  battery_capacity = sixaxis_battery_capacity[index];
  battery_charging = 0;
  cable_state = 0;
 }

 spin_lock_irqsave(&sc->lock, flags);
 sc->cable_state = cable_state;
 sc->battery_capacity = battery_capacity;
 sc->battery_charging = battery_charging;
 spin_unlock_irqrestore(&sc->lock, flags);

 if (sc->quirks & SIXAXIS_CONTROLLER) {
  int val;

  offset = SIXAXIS_INPUT_REPORT_ACC_X_OFFSET;
  val = ((rd[offset+1] << 8) | rd[offset]) - 511;
  input_report_abs(sc->sensor_dev, ABS_X, val);


  val = 511 - ((rd[offset+5] << 8) | rd[offset+4]);
  input_report_abs(sc->sensor_dev, ABS_Y, val);

  val = 511 - ((rd[offset+3] << 8) | rd[offset+2]);
  input_report_abs(sc->sensor_dev, ABS_Z, val);

  input_sync(sc->sensor_dev);
 }
}
