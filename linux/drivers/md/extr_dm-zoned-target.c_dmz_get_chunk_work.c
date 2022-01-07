
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_chunk_work {int refcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline void dmz_get_chunk_work(struct dm_chunk_work *cw)
{
 refcount_inc(&cw->refcount);
}
