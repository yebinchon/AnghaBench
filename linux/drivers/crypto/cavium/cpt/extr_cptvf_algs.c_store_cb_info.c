
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_request_info {void* callback_arg; void* callback; } ;
struct ablkcipher_request {int base; } ;


 scalar_t__ cvm_callback ;

__attribute__((used)) static inline void store_cb_info(struct ablkcipher_request *req,
     struct cpt_request_info *req_info)
{
 req_info->callback = (void *)cvm_callback;
 req_info->callback_arg = (void *)&req->base;
}
