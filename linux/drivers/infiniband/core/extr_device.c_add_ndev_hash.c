
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_port_data {scalar_t__ netdev; int ndev_hash_link; } ;


 int hash_add_rcu (int ,int *,uintptr_t) ;
 int hash_del_rcu (int *) ;
 scalar_t__ hash_hashed (int *) ;
 int might_sleep () ;
 int ndev_hash ;
 int ndev_hash_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_rcu () ;

__attribute__((used)) static void add_ndev_hash(struct ib_port_data *pdata)
{
 unsigned long flags;

 might_sleep();

 spin_lock_irqsave(&ndev_hash_lock, flags);
 if (hash_hashed(&pdata->ndev_hash_link)) {
  hash_del_rcu(&pdata->ndev_hash_link);
  spin_unlock_irqrestore(&ndev_hash_lock, flags);




  synchronize_rcu();
  spin_lock_irqsave(&ndev_hash_lock, flags);
 }
 if (pdata->netdev)
  hash_add_rcu(ndev_hash, &pdata->ndev_hash_link,
        (uintptr_t)pdata->netdev);
 spin_unlock_irqrestore(&ndev_hash_lock, flags);
}
