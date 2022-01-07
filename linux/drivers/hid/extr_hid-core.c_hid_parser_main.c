
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_parser {int local; int device; } ;
struct hid_item {int tag; } ;
typedef int __u32 ;


 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;





 int HID_OUTPUT_REPORT ;
 int close_collection (struct hid_parser*) ;
 int hid_add_field (struct hid_parser*,int ,int) ;
 int hid_concatenate_usage_page (struct hid_parser*) ;
 int hid_warn (int ,char*,int) ;
 int item_udata (struct hid_item*) ;
 int memset (int *,int ,int) ;
 int open_collection (struct hid_parser*,int) ;

__attribute__((used)) static int hid_parser_main(struct hid_parser *parser, struct hid_item *item)
{
 __u32 data;
 int ret;

 hid_concatenate_usage_page(parser);

 data = item_udata(item);

 switch (item->tag) {
 case 132:
  ret = open_collection(parser, data & 0xff);
  break;
 case 131:
  ret = close_collection(parser);
  break;
 case 129:
  ret = hid_add_field(parser, HID_INPUT_REPORT, data);
  break;
 case 128:
  ret = hid_add_field(parser, HID_OUTPUT_REPORT, data);
  break;
 case 130:
  ret = hid_add_field(parser, HID_FEATURE_REPORT, data);
  break;
 default:
  hid_warn(parser->device, "unknown main item tag 0x%x\n", item->tag);
  ret = 0;
 }

 memset(&parser->local, 0, sizeof(parser->local));

 return ret;
}
