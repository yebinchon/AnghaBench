
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct vpd_section {int baseaddr; TYPE_1__ bin_attr; } ;
typedef scalar_t__ s32 ;


 int VPD_OK ;
 int vpd_decode_string (int ,int ,scalar_t__*,int ,struct vpd_section*) ;
 int vpd_section_attrib_add ;

__attribute__((used)) static int vpd_section_create_attribs(struct vpd_section *sec)
{
 s32 consumed;
 int ret;

 consumed = 0;
 do {
  ret = vpd_decode_string(sec->bin_attr.size, sec->baseaddr,
     &consumed, vpd_section_attrib_add, sec);
 } while (ret == VPD_OK);

 return 0;
}
