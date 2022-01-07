
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int bio_split; struct r1conf* barrier; struct r1conf* nr_queued; struct r1conf* nr_waiting; struct r1conf* nr_pending; struct r1conf* poolinfo; int tmppage; struct r1conf* mirrors; int r1bio_pool; } ;
struct mddev {int dummy; } ;


 int bioset_exit (int *) ;
 int kfree (struct r1conf*) ;
 int mempool_exit (int *) ;
 int safe_put_page (int ) ;

__attribute__((used)) static void raid1_free(struct mddev *mddev, void *priv)
{
 struct r1conf *conf = priv;

 mempool_exit(&conf->r1bio_pool);
 kfree(conf->mirrors);
 safe_put_page(conf->tmppage);
 kfree(conf->poolinfo);
 kfree(conf->nr_pending);
 kfree(conf->nr_waiting);
 kfree(conf->nr_queued);
 kfree(conf->barrier);
 bioset_exit(&conf->bio_split);
 kfree(conf);
}
