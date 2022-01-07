
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_notifier {int kref; } ;


 int cec_notifier_release ;
 int cec_notifiers_lock ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cec_notifier_put(struct cec_notifier *n)
{
 mutex_lock(&cec_notifiers_lock);
 kref_put(&n->kref, cec_notifier_release);
 mutex_unlock(&cec_notifiers_lock);
}
