
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int report_count; int report_size; } ;
struct hid_parser {int scan_flags; TYPE_1__ global; } ;


 int HID_SCAN_FLAG_MT_WIN_8 ;

__attribute__((used)) static void hid_scan_feature_usage(struct hid_parser *parser, u32 usage)
{
 if (usage == 0xff0000c5 && parser->global.report_count == 256 &&
     parser->global.report_size == 8)
  parser->scan_flags |= HID_SCAN_FLAG_MT_WIN_8;
}
