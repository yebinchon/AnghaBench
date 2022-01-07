
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
typedef int __u8 ;


 int handler_accel (struct wiimote_data*,int const*) ;
 int handler_ext (struct wiimote_data*,int const*,int) ;
 int handler_keys (struct wiimote_data*,int const*) ;
 int ir_to_input0 (struct wiimote_data*,int const*,int) ;
 int ir_to_input1 (struct wiimote_data*,int const*,int) ;
 int ir_to_input2 (struct wiimote_data*,int const*,int) ;
 int ir_to_input3 (struct wiimote_data*,int const*,int) ;

__attribute__((used)) static void handler_drm_KAIE(struct wiimote_data *wdata, const __u8 *payload)
{
 handler_keys(wdata, payload);
 handler_accel(wdata, payload);
 ir_to_input0(wdata, &payload[5], 0);
 ir_to_input1(wdata, &payload[7], 1);
 ir_to_input2(wdata, &payload[10], 0);
 ir_to_input3(wdata, &payload[12], 1);
 handler_ext(wdata, &payload[15], 6);
}
