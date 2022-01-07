
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_xfer {int node; } ;
struct scpi_chan {int xfers_lock; int xfers_list; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void put_scpi_xfer(struct scpi_xfer *t, struct scpi_chan *ch)
{
 mutex_lock(&ch->xfers_lock);
 list_add_tail(&t->node, &ch->xfers_list);
 mutex_unlock(&ch->xfers_lock);
}
