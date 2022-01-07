
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {int bio_split; struct r10conf* mirrors_new; struct r10conf* mirrors_old; struct r10conf* mirrors; int tmppage; int r10bio_pool; } ;
struct mddev {int dummy; } ;


 int bioset_exit (int *) ;
 int kfree (struct r10conf*) ;
 int mempool_exit (int *) ;
 int safe_put_page (int ) ;

__attribute__((used)) static void raid10_free(struct mddev *mddev, void *priv)
{
 struct r10conf *conf = priv;

 mempool_exit(&conf->r10bio_pool);
 safe_put_page(conf->tmppage);
 kfree(conf->mirrors);
 kfree(conf->mirrors_old);
 kfree(conf->mirrors_new);
 bioset_exit(&conf->bio_split);
 kfree(conf);
}
