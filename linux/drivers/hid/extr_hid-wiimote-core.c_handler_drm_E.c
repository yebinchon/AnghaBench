
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
typedef int __u8 ;


 int handler_ext (struct wiimote_data*,int const*,int) ;

__attribute__((used)) static void handler_drm_E(struct wiimote_data *wdata, const __u8 *payload)
{
 handler_ext(wdata, payload, 21);
}
