
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcm_message {int type; } ;




 int flexrm_sba_estimate_nonheader_desc_count (struct brcm_message*) ;
 int flexrm_spu_estimate_nonheader_desc_count (struct brcm_message*) ;

__attribute__((used)) static u32 flexrm_estimate_nonheader_desc_count(struct brcm_message *msg)
{
 if (!msg)
  return 0;

 switch (msg->type) {
 case 128:
  return flexrm_spu_estimate_nonheader_desc_count(msg);
 case 129:
  return flexrm_sba_estimate_nonheader_desc_count(msg);
 default:
  return 0;
 };
}
