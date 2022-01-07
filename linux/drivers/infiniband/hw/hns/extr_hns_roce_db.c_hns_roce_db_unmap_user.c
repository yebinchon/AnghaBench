
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_ucontext {int page_mutex; } ;
struct TYPE_3__ {TYPE_2__* user_page; } ;
struct hns_roce_db {TYPE_1__ u; } ;
struct TYPE_4__ {int umem; int list; int refcount; } ;


 int ib_umem_release (int ) ;
 int kfree (TYPE_2__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_dec (int *) ;
 scalar_t__ refcount_dec_if_one (int *) ;

void hns_roce_db_unmap_user(struct hns_roce_ucontext *context,
       struct hns_roce_db *db)
{
 mutex_lock(&context->page_mutex);

 refcount_dec(&db->u.user_page->refcount);
 if (refcount_dec_if_one(&db->u.user_page->refcount)) {
  list_del(&db->u.user_page->list);
  ib_umem_release(db->u.user_page->umem);
  kfree(db->u.user_page);
 }

 mutex_unlock(&context->page_mutex);
}
