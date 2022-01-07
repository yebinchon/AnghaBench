
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {struct efa_aenq_handlers* aenq_handlers; } ;
struct efa_com_dev {TYPE_1__ aenq; } ;
struct efa_aenq_handlers {scalar_t__ unimplemented_handler; scalar_t__* handlers; } ;
typedef scalar_t__ efa_aenq_handler ;


 size_t EFA_MAX_HANDLERS ;

__attribute__((used)) static efa_aenq_handler efa_com_get_specific_aenq_cb(struct efa_com_dev *edev,
           u16 group)
{
 struct efa_aenq_handlers *aenq_handlers = edev->aenq.aenq_handlers;

 if (group < EFA_MAX_HANDLERS && aenq_handlers->handlers[group])
  return aenq_handlers->handlers[group];

 return aenq_handlers->unimplemented_handler;
}
