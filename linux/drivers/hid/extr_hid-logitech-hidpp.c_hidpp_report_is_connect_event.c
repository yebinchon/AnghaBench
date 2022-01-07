
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sub_id; } ;
struct hidpp_report {scalar_t__ report_id; TYPE_1__ rap; } ;


 scalar_t__ REPORT_ID_HIDPP_SHORT ;

__attribute__((used)) static inline bool hidpp_report_is_connect_event(struct hidpp_report *report)
{
 return (report->report_id == REPORT_ID_HIDPP_SHORT) &&
  (report->rap.sub_id == 0x41);
}
