
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sectors_bypassed; } ;
struct TYPE_6__ {TYPE_1__ collector; } ;
struct cached_dev {TYPE_2__ accounting; } ;
struct TYPE_7__ {int sectors_bypassed; } ;
struct TYPE_8__ {TYPE_3__ collector; } ;
struct cache_set {TYPE_4__ accounting; } ;


 int atomic_add (int,int *) ;

void bch_mark_sectors_bypassed(struct cache_set *c, struct cached_dev *dc,
          int sectors)
{
 atomic_add(sectors, &dc->accounting.collector.sectors_bypassed);
 atomic_add(sectors, &c->accounting.collector.sectors_bypassed);
}
