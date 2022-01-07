
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity_io {int v; } ;
struct dm_verity_fec_io {scalar_t__ level; int * output; scalar_t__ nbufs; int bufs; int * rs; } ;


 struct dm_verity_fec_io* fec_io (struct dm_verity_io*) ;
 int memset (int ,int ,int) ;
 int verity_fec_is_enabled (int ) ;

void verity_fec_init_io(struct dm_verity_io *io)
{
 struct dm_verity_fec_io *fio = fec_io(io);

 if (!verity_fec_is_enabled(io->v))
  return;

 fio->rs = ((void*)0);
 memset(fio->bufs, 0, sizeof(fio->bufs));
 fio->nbufs = 0;
 fio->output = ((void*)0);
 fio->level = 0;
}
