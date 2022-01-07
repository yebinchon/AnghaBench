
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int delimiter_depth; int delimiter_branch; unsigned int usage_minimum; unsigned int usage_index; } ;
struct hid_parser {TYPE_1__ local; TYPE_2__* device; } ;
struct hid_item {int tag; int size; } ;
typedef unsigned int __u32 ;
struct TYPE_5__ {int dev; } ;






 unsigned int HID_MAX_USAGES ;
 int dbg_hid (char*,...) ;
 int dev_name (int *) ;
 int hid_add_usage (struct hid_parser*,unsigned int,int ) ;
 int hid_err (TYPE_2__*,char*) ;
 int hid_warn (TYPE_2__*,char*) ;
 unsigned int item_udata (struct hid_item*) ;

__attribute__((used)) static int hid_parser_local(struct hid_parser *parser, struct hid_item *item)
{
 __u32 data;
 unsigned n;
 __u32 count;

 data = item_udata(item);

 switch (item->tag) {
 case 131:

  if (data) {






   if (parser->local.delimiter_depth != 0) {
    hid_err(parser->device, "nested delimiters\n");
    return -1;
   }
   parser->local.delimiter_depth++;
   parser->local.delimiter_branch++;
  } else {
   if (parser->local.delimiter_depth < 1) {
    hid_err(parser->device, "bogus close delimiter\n");
    return -1;
   }
   parser->local.delimiter_depth--;
  }
  return 0;

 case 130:

  if (parser->local.delimiter_branch > 1) {
   dbg_hid("alternative usage ignored\n");
   return 0;
  }

  return hid_add_usage(parser, data, item->size);

 case 128:

  if (parser->local.delimiter_branch > 1) {
   dbg_hid("alternative usage ignored\n");
   return 0;
  }

  parser->local.usage_minimum = data;
  return 0;

 case 129:

  if (parser->local.delimiter_branch > 1) {
   dbg_hid("alternative usage ignored\n");
   return 0;
  }

  count = data - parser->local.usage_minimum;
  if (count + parser->local.usage_index >= HID_MAX_USAGES) {




   if (dev_name(&parser->device->dev))
    hid_warn(parser->device,
      "ignoring exceeding usage max\n");
   data = HID_MAX_USAGES - parser->local.usage_index +
    parser->local.usage_minimum - 1;
   if (data <= 0) {
    hid_err(parser->device,
     "no more usage index available\n");
    return -1;
   }
  }

  for (n = parser->local.usage_minimum; n <= data; n++)
   if (hid_add_usage(parser, n, item->size)) {
    dbg_hid("hid_add_usage failed\n");
    return -1;
   }
  return 0;

 default:

  dbg_hid("unknown local item tag 0x%x\n", item->tag);
  return 0;
 }
 return 0;
}
