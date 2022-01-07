
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct iforce {TYPE_1__* core_effects; } ;
struct TYPE_2__ {int flags; } ;


 int FF_CMD_EFFECT ;
 int FF_CORE_SHOULD_PLAY ;
 unsigned char HI (size_t) ;
 unsigned char LO (size_t) ;
 size_t TIME_SCALE (size_t) ;
 unsigned char find_button (struct iforce*,size_t) ;
 int iforce_control_playback (struct iforce*,size_t,int) ;
 int iforce_send_packet (struct iforce*,int ,unsigned char*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int make_core(struct iforce* iforce, u16 id, u16 mod_id1, u16 mod_id2,
 u8 effect_type, u8 axes, u16 duration, u16 delay, u16 button,
 u16 interval, u16 direction)
{
 unsigned char data[14];

 duration = TIME_SCALE(duration);
 delay = TIME_SCALE(delay);
 interval = TIME_SCALE(interval);

 data[0] = LO(id);
 data[1] = effect_type;
 data[2] = LO(axes) | find_button(iforce, button);

 data[3] = LO(duration);
 data[4] = HI(duration);

 data[5] = HI(direction);

 data[6] = LO(interval);
 data[7] = HI(interval);

 data[8] = LO(mod_id1);
 data[9] = HI(mod_id1);
 data[10] = LO(mod_id2);
 data[11] = HI(mod_id2);

 data[12] = LO(delay);
 data[13] = HI(delay);




 iforce_send_packet(iforce, FF_CMD_EFFECT, data);


 if (test_bit(FF_CORE_SHOULD_PLAY, iforce->core_effects[id].flags)) {

  iforce_control_playback(iforce, id, 1);
 }

 return 0;
}
