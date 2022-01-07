
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_rdev {int rqt_kref; } ;


 int destroy_rqtpool ;
 int kref_put (int *,int ) ;

void c4iw_rqtpool_destroy(struct c4iw_rdev *rdev)
{
 kref_put(&rdev->rqt_kref, destroy_rqtpool);
}
