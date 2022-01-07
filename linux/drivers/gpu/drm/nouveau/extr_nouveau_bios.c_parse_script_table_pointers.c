
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct nvbios {int * data; int init_script_tbls_ptr; } ;


 int ROM16 (int ) ;

__attribute__((used)) static void parse_script_table_pointers(struct nvbios *bios, uint16_t offset)
{
 bios->init_script_tbls_ptr = ROM16(bios->data[offset]);
}
