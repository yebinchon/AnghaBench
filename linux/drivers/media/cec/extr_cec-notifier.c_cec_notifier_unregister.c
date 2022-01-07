
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cec_notifier {int lock; TYPE_1__* cec_adap; int * callback; } ;
struct TYPE_2__ {int * notifier; } ;


 int cec_notifier_put (struct cec_notifier*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cec_notifier_unregister(struct cec_notifier *n)
{

 if (!n->callback)
  return;

 mutex_lock(&n->lock);
 n->callback = ((void*)0);
 n->cec_adap->notifier = ((void*)0);
 n->cec_adap = ((void*)0);
 mutex_unlock(&n->lock);
 cec_notifier_put(n);
}
