
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct journal_write {TYPE_2__* c; } ;
struct bio {int bi_status; struct journal_write* bi_private; } ;
struct TYPE_3__ {int io; } ;
struct TYPE_4__ {TYPE_1__ journal; } ;


 int cache_set_err_on (int ,TYPE_2__*,char*) ;
 int closure_put (int *) ;

__attribute__((used)) static void journal_write_endio(struct bio *bio)
{
 struct journal_write *w = bio->bi_private;

 cache_set_err_on(bio->bi_status, w->c, "journal io error");
 closure_put(&w->c->journal.io);
}
