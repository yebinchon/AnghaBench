
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int pool_size; struct r5conf* pending_data; struct r5conf* stripe_hashtbl; int bio_split; struct r5conf* disks; scalar_t__ extra_page; int shrinker; } ;


 int bioset_exit (int *) ;
 int free_thread_groups (struct r5conf*) ;
 int kfree (struct r5conf*) ;
 int log_exit (struct r5conf*) ;
 int put_page (scalar_t__) ;
 int raid5_free_percpu (struct r5conf*) ;
 int shrink_stripes (struct r5conf*) ;
 int unregister_shrinker (int *) ;

__attribute__((used)) static void free_conf(struct r5conf *conf)
{
 int i;

 log_exit(conf);

 unregister_shrinker(&conf->shrinker);
 free_thread_groups(conf);
 shrink_stripes(conf);
 raid5_free_percpu(conf);
 for (i = 0; i < conf->pool_size; i++)
  if (conf->disks[i].extra_page)
   put_page(conf->disks[i].extra_page);
 kfree(conf->disks);
 bioset_exit(&conf->bio_split);
 kfree(conf->stripe_hashtbl);
 kfree(conf->pending_data);
 kfree(conf);
}
