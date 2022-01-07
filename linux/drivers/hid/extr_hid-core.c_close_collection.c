
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_parser {int collection_stack_ptr; int device; } ;


 int EINVAL ;
 int hid_err (int ,char*) ;

__attribute__((used)) static int close_collection(struct hid_parser *parser)
{
 if (!parser->collection_stack_ptr) {
  hid_err(parser->device, "collection stack underflow\n");
  return -EINVAL;
 }
 parser->collection_stack_ptr--;
 return 0;
}
