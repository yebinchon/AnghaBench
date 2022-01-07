
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {int failed; int number_of_mismatches; } ;


 int DMERR (char*,char const*,int) ;
 int EILSEQ ;
 int atomic64_inc (int *) ;
 int cmpxchg (int *,int ,int) ;

__attribute__((used)) static void dm_integrity_io_error(struct dm_integrity_c *ic, const char *msg, int err)
{
 if (err == -EILSEQ)
  atomic64_inc(&ic->number_of_mismatches);
 if (!cmpxchg(&ic->failed, 0, err))
  DMERR("Error on %s: %d", msg, err);
}
