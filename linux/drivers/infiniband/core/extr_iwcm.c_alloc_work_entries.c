
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwcm_work {int list; struct iwcm_id_private* cm_id; } ;
struct iwcm_id_private {int work_free_list; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dealloc_work_entries (struct iwcm_id_private*) ;
 struct iwcm_work* kmalloc (int,int ) ;
 int list_empty (int *) ;
 int put_work (struct iwcm_work*) ;

__attribute__((used)) static int alloc_work_entries(struct iwcm_id_private *cm_id_priv, int count)
{
 struct iwcm_work *work;

 BUG_ON(!list_empty(&cm_id_priv->work_free_list));
 while (count--) {
  work = kmalloc(sizeof(struct iwcm_work), GFP_KERNEL);
  if (!work) {
   dealloc_work_entries(cm_id_priv);
   return -ENOMEM;
  }
  work->cm_id = cm_id_priv;
  INIT_LIST_HEAD(&work->list);
  put_work(work);
 }
 return 0;
}
