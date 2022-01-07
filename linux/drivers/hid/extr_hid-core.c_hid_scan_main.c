
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage_index; int * usage; } ;
struct hid_parser {TYPE_1__ local; } ;
struct hid_item {int tag; } ;
typedef int __u32 ;


 int HID_MAIN_ITEM_CONSTANT ;





 int hid_concatenate_usage_page (struct hid_parser*) ;
 int hid_scan_collection (struct hid_parser*,int) ;
 int hid_scan_feature_usage (struct hid_parser*,int ) ;
 int hid_scan_input_usage (struct hid_parser*,int ) ;
 int item_udata (struct hid_item*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int hid_scan_main(struct hid_parser *parser, struct hid_item *item)
{
 __u32 data;
 int i;

 hid_concatenate_usage_page(parser);

 data = item_udata(item);

 switch (item->tag) {
 case 132:
  hid_scan_collection(parser, data & 0xff);
  break;
 case 131:
  break;
 case 129:

  if (data & HID_MAIN_ITEM_CONSTANT)
   break;
  for (i = 0; i < parser->local.usage_index; i++)
   hid_scan_input_usage(parser, parser->local.usage[i]);
  break;
 case 128:
  break;
 case 130:
  for (i = 0; i < parser->local.usage_index; i++)
   hid_scan_feature_usage(parser, parser->local.usage[i]);
  break;
 }


 memset(&parser->local, 0, sizeof(parser->local));

 return 0;
}
