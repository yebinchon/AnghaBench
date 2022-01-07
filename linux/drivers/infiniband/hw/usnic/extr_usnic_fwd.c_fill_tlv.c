
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_tlv {int length; int val; int type; } ;
struct filter_action {int dummy; } ;
struct filter {int dummy; } ;


 int CLSF_TLV_ACTION ;
 int CLSF_TLV_FILTER ;

__attribute__((used)) static void fill_tlv(struct filter_tlv *tlv, struct filter *filter,
  struct filter_action *action)
{
 tlv->type = CLSF_TLV_FILTER;
 tlv->length = sizeof(struct filter);
 *((struct filter *)&tlv->val) = *filter;

 tlv = (struct filter_tlv *)((char *)tlv + sizeof(struct filter_tlv) +
   sizeof(struct filter));
 tlv->type = CLSF_TLV_ACTION;
 tlv->length = sizeof(struct filter_action);
 *((struct filter_action *)&tlv->val) = *action;
}
