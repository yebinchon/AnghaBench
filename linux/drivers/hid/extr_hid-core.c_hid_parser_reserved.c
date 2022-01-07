
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_parser {int dummy; } ;
struct hid_item {int tag; } ;


 int dbg_hid (char*,int ) ;

__attribute__((used)) static int hid_parser_reserved(struct hid_parser *parser, struct hid_item *item)
{
 dbg_hid("reserved item type, tag 0x%x\n", item->tag);
 return 0;
}
