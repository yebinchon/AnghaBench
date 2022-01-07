
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
typedef int __u8 ;


 int WIIPROTO_REQ_NULL ;
 int handler_keys (struct wiimote_data*,int const*) ;
 int wiiproto_req_drm (struct wiimote_data*,int ) ;

__attribute__((used)) static void handler_status_K(struct wiimote_data *wdata,
        const __u8 *payload)
{
 handler_keys(wdata, payload);


 wiiproto_req_drm(wdata, WIIPROTO_REQ_NULL);
}
