
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct send_context_info {int type; int base; scalar_t__ credits; } ;
struct sc_config_sizes {int count; scalar_t__ size; } ;
struct hfi1_devdata {struct send_context_info* send_contexts; struct sc_config_sizes* sc_sizes; struct send_context_info* hw_to_sw; int num_send_contexts; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct send_context_info INVALID_SCI ;
 int SC_MAX ;
 int TXE_NUM_CONTEXTS ;
 int free_credit_return (struct hfi1_devdata*) ;
 int init_credit_return (struct hfi1_devdata*) ;
 struct send_context_info* kcalloc (int ,int,int ) ;
 int kfree (struct send_context_info*) ;
 struct send_context_info* kmalloc_array (int,int,int ) ;

int init_send_contexts(struct hfi1_devdata *dd)
{
 u16 base;
 int ret, i, j, context;

 ret = init_credit_return(dd);
 if (ret)
  return ret;

 dd->hw_to_sw = kmalloc_array(TXE_NUM_CONTEXTS, sizeof(u8),
     GFP_KERNEL);
 dd->send_contexts = kcalloc(dd->num_send_contexts,
        sizeof(struct send_context_info),
        GFP_KERNEL);
 if (!dd->send_contexts || !dd->hw_to_sw) {
  kfree(dd->hw_to_sw);
  kfree(dd->send_contexts);
  free_credit_return(dd);
  return -ENOMEM;
 }


 for (i = 0; i < TXE_NUM_CONTEXTS; i++)
  dd->hw_to_sw[i] = INVALID_SCI;





 context = 0;
 base = 1;
 for (i = 0; i < SC_MAX; i++) {
  struct sc_config_sizes *scs = &dd->sc_sizes[i];

  for (j = 0; j < scs->count; j++) {
   struct send_context_info *sci =
      &dd->send_contexts[context];
   sci->type = i;
   sci->base = base;
   sci->credits = scs->size;

   context++;
   base += scs->size;
  }
 }

 return 0;
}
