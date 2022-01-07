
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_verity_fec {int dummy; } ;
struct dm_verity {struct dm_verity_fec* fec; TYPE_1__* ti; } ;
struct TYPE_2__ {char* error; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct dm_verity_fec* kzalloc (int,int ) ;

int verity_fec_ctr_alloc(struct dm_verity *v)
{
 struct dm_verity_fec *f;

 f = kzalloc(sizeof(struct dm_verity_fec), GFP_KERNEL);
 if (!f) {
  v->ti->error = "Cannot allocate FEC structure";
  return -ENOMEM;
 }
 v->fec = f;

 return 0;
}
