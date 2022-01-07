
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ec_response_get_next_data {int switches; } ;
struct cros_ec_keyb {struct cros_ec_device* ec; } ;
struct cros_ec_device {int dummy; } ;


 int EC_MKBP_EVENT_SWITCH ;
 int EC_MKBP_INFO_CURRENT ;
 int EV_SW ;
 int cros_ec_keyb_info (struct cros_ec_device*,int ,int ,union ec_response_get_next_data*,int) ;
 int cros_ec_keyb_report_bs (struct cros_ec_keyb*,int ,int ) ;
 int get_unaligned_le32 (int *) ;

__attribute__((used)) static int cros_ec_keyb_query_switches(struct cros_ec_keyb *ckdev)
{
 struct cros_ec_device *ec_dev = ckdev->ec;
 union ec_response_get_next_data event_data = {};
 int ret;

 ret = cros_ec_keyb_info(ec_dev, EC_MKBP_INFO_CURRENT,
    EC_MKBP_EVENT_SWITCH, &event_data,
    sizeof(event_data.switches));
 if (ret)
  return ret;

 cros_ec_keyb_report_bs(ckdev, EV_SW,
          get_unaligned_le32(&event_data.switches));

 return 0;
}
