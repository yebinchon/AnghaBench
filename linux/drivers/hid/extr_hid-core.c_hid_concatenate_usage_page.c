
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int usage_page; } ;
struct TYPE_3__ {int usage_index; int* usage_size; int* usage; } ;
struct hid_parser {TYPE_2__ global; TYPE_1__ local; } ;



__attribute__((used)) static void hid_concatenate_usage_page(struct hid_parser *parser)
{
 int i;

 for (i = 0; i < parser->local.usage_index; i++)
  if (parser->local.usage_size[i] <= 2)
   parser->local.usage[i] += parser->global.usage_page << 16;
}
