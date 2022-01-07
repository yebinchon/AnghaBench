
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* accel_split; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef int __u8 ;


 int handler_keys (struct wiimote_data*,int const*) ;
 int ir_to_input0 (struct wiimote_data*,int const*,int) ;
 int ir_to_input1 (struct wiimote_data*,int const*,int) ;

__attribute__((used)) static void handler_drm_SKAI1(struct wiimote_data *wdata, const __u8 *payload)
{
 handler_keys(wdata, payload);

 wdata->state.accel_split[0] = payload[2];
 wdata->state.accel_split[1] = (payload[0] >> 1) & (0x10 | 0x20);
 wdata->state.accel_split[1] |= (payload[1] << 1) & (0x40 | 0x80);

 ir_to_input0(wdata, &payload[3], 0);
 ir_to_input1(wdata, &payload[12], 0);
}
