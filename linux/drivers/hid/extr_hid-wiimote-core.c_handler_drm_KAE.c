
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
typedef int __u8 ;


 int handler_accel (struct wiimote_data*,int const*) ;
 int handler_ext (struct wiimote_data*,int const*,int) ;
 int handler_keys (struct wiimote_data*,int const*) ;

__attribute__((used)) static void handler_drm_KAE(struct wiimote_data *wdata, const __u8 *payload)
{
 handler_keys(wdata, payload);
 handler_accel(wdata, payload);
 handler_ext(wdata, &payload[5], 16);
}
