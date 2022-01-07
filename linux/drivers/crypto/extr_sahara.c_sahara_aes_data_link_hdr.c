
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sahara_dev {int dummy; } ;


 int SAHARA_HDR_BASE ;
 int SAHARA_HDR_CHA_SKHA ;
 int SAHARA_HDR_FORM_DATA ;
 int SAHARA_HDR_PARITY_BIT ;

__attribute__((used)) static u32 sahara_aes_data_link_hdr(struct sahara_dev *dev)
{
 return SAHARA_HDR_BASE | SAHARA_HDR_FORM_DATA |
   SAHARA_HDR_CHA_SKHA | SAHARA_HDR_PARITY_BIT;
}
