
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mapped_device {int init_tio_pdu; } ;
struct dm_rq_target_io {int info; scalar_t__ completed; scalar_t__ error; struct request* orig; int * clone; int * ti; struct mapped_device* md; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void init_tio(struct dm_rq_target_io *tio, struct request *rq,
       struct mapped_device *md)
{
 tio->md = md;
 tio->ti = ((void*)0);
 tio->clone = ((void*)0);
 tio->orig = rq;
 tio->error = 0;
 tio->completed = 0;





 if (!md->init_tio_pdu)
  memset(&tio->info, 0, sizeof(tio->info));
}
