
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmaengine_result {int residue; int result; } ;
struct dmaengine_desc_callback {int callback_param; int (* callback ) (int ) ;int (* callback_result ) (int ,struct dmaengine_result const*) ;} ;


 int DMA_TRANS_NOERROR ;
 int stub1 (int ,struct dmaengine_result const*) ;
 int stub2 (int ) ;

__attribute__((used)) static inline void
dmaengine_desc_callback_invoke(struct dmaengine_desc_callback *cb,
          const struct dmaengine_result *result)
{
 struct dmaengine_result dummy_result = {
  .result = DMA_TRANS_NOERROR,
  .residue = 0
 };

 if (cb->callback_result) {
  if (!result)
   result = &dummy_result;
  cb->callback_result(cb->callback_param, result);
 } else if (cb->callback) {
  cb->callback(cb->callback_param);
 }
}
