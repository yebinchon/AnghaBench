
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_parser {int collection_stack_ptr; unsigned int* collection_stack; TYPE_1__* device; } ;
struct hid_collection {unsigned int type; int usage; } ;
struct TYPE_2__ {struct hid_collection* collection; } ;



__attribute__((used)) static unsigned hid_lookup_collection(struct hid_parser *parser, unsigned type)
{
 struct hid_collection *collection = parser->device->collection;
 int n;

 for (n = parser->collection_stack_ptr - 1; n >= 0; n--) {
  unsigned index = parser->collection_stack[n];
  if (collection[index].type == type)
   return collection[index].usage;
 }
 return 0;
}
