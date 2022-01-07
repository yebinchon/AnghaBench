
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcm_message {int type; } ;




 int flexrm_sba_sanity_check (struct brcm_message*) ;
 int flexrm_spu_sanity_check (struct brcm_message*) ;

__attribute__((used)) static bool flexrm_sanity_check(struct brcm_message *msg)
{
 if (!msg)
  return 0;

 switch (msg->type) {
 case 128:
  return flexrm_spu_sanity_check(msg);
 case 129:
  return flexrm_sba_sanity_check(msg);
 default:
  return 0;
 };
}
