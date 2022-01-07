
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_ucontext {int db_page_mutex; } ;
struct TYPE_3__ {TYPE_2__* user_page; } ;
struct mlx5_db {TYPE_1__ u; } ;
struct TYPE_4__ {int umem; int list; int refcnt; } ;


 int ib_umem_release (int ) ;
 int kfree (TYPE_2__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_ib_db_unmap_user(struct mlx5_ib_ucontext *context, struct mlx5_db *db)
{
 mutex_lock(&context->db_page_mutex);

 if (!--db->u.user_page->refcnt) {
  list_del(&db->u.user_page->list);
  ib_umem_release(db->u.user_page->umem);
  kfree(db->u.user_page);
 }

 mutex_unlock(&context->db_page_mutex);
}
