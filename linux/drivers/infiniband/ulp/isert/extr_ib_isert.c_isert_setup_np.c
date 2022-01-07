
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct rdma_cm_id {int dummy; } ;
struct isert_np {struct rdma_cm_id* cm_id; struct iscsi_np* np; int pending; int accepted; int mutex; int sem; } ;
struct iscsi_np {struct isert_np* np_context; int np_sockaddr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct rdma_cm_id*) ;
 int PTR_ERR (struct rdma_cm_id*) ;
 struct rdma_cm_id* isert_setup_id (struct isert_np*) ;
 int kfree (struct isert_np*) ;
 struct isert_np* kzalloc (int,int ) ;
 int memcpy (int *,struct sockaddr_storage*,int) ;
 int mutex_init (int *) ;
 int sema_init (int *,int ) ;

__attribute__((used)) static int
isert_setup_np(struct iscsi_np *np,
        struct sockaddr_storage *ksockaddr)
{
 struct isert_np *isert_np;
 struct rdma_cm_id *isert_lid;
 int ret;

 isert_np = kzalloc(sizeof(struct isert_np), GFP_KERNEL);
 if (!isert_np)
  return -ENOMEM;

 sema_init(&isert_np->sem, 0);
 mutex_init(&isert_np->mutex);
 INIT_LIST_HEAD(&isert_np->accepted);
 INIT_LIST_HEAD(&isert_np->pending);
 isert_np->np = np;





 memcpy(&np->np_sockaddr, ksockaddr,
        sizeof(struct sockaddr_storage));

 isert_lid = isert_setup_id(isert_np);
 if (IS_ERR(isert_lid)) {
  ret = PTR_ERR(isert_lid);
  goto out;
 }

 isert_np->cm_id = isert_lid;
 np->np_context = isert_np;

 return 0;

out:
 kfree(isert_np);

 return ret;
}
