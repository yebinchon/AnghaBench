
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {size_t usage_index; unsigned int* usage; int * collection_index; int * usage_size; } ;
struct hid_parser {int collection_stack_ptr; TYPE_1__ local; int * collection_stack; int device; } ;


 size_t HID_MAX_USAGES ;
 int hid_err (int ,char*) ;

__attribute__((used)) static int hid_add_usage(struct hid_parser *parser, unsigned usage, u8 size)
{
 if (parser->local.usage_index >= HID_MAX_USAGES) {
  hid_err(parser->device, "usage index exceeded\n");
  return -1;
 }
 parser->local.usage[parser->local.usage_index] = usage;
 parser->local.usage_size[parser->local.usage_index] = size;
 parser->local.collection_index[parser->local.usage_index] =
  parser->collection_stack_ptr ?
  parser->collection_stack[parser->collection_stack_ptr - 1] : 0;
 parser->local.usage_index++;
 return 0;
}
