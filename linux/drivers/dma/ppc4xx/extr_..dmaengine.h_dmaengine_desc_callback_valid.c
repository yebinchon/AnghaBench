
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmaengine_desc_callback {scalar_t__ callback; } ;



__attribute__((used)) static inline bool
dmaengine_desc_callback_valid(struct dmaengine_desc_callback *cb)
{
 return (cb->callback) ? 1 : 0;
}
