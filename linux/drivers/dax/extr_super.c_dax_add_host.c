
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {char const* host; int list; } ;


 int INIT_HLIST_NODE (int *) ;
 int dax_host_hash (char const*) ;
 int * dax_host_list ;
 int dax_host_lock ;
 int hlist_add_head (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dax_add_host(struct dax_device *dax_dev, const char *host)
{
 int hash;





 INIT_HLIST_NODE(&dax_dev->list);
 dax_dev->host = host;
 if (!host)
  return;

 hash = dax_host_hash(host);
 spin_lock(&dax_host_lock);
 hlist_add_head(&dax_dev->list, &dax_host_list[hash]);
 spin_unlock(&dax_host_lock);
}
