
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity {scalar_t__ data_blocks; int validated_blocks; struct dm_target* ti; } ;
struct dm_target {char* error; } ;


 int BITS_TO_LONGS (scalar_t__) ;
 int E2BIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ INT_MAX ;
 int kvcalloc (int ,int,int ) ;

__attribute__((used)) static int verity_alloc_most_once(struct dm_verity *v)
{
 struct dm_target *ti = v->ti;


 if (v->data_blocks > INT_MAX) {
  ti->error = "device too large to use check_at_most_once";
  return -E2BIG;
 }

 v->validated_blocks = kvcalloc(BITS_TO_LONGS(v->data_blocks),
           sizeof(unsigned long),
           GFP_KERNEL);
 if (!v->validated_blocks) {
  ti->error = "failed to allocate bitset for check_at_most_once";
  return -ENOMEM;
 }

 return 0;
}
