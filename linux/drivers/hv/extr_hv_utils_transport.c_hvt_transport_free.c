
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvutil_transport {struct hvutil_transport* outmsg; int mdev; } ;


 int kfree (struct hvutil_transport*) ;
 int misc_deregister (int *) ;

__attribute__((used)) static void hvt_transport_free(struct hvutil_transport *hvt)
{
 misc_deregister(&hvt->mdev);
 kfree(hvt->outmsg);
 kfree(hvt);
}
