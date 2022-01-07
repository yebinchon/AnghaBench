
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int bm; } ;


 int EPERM ;
 int format_metadata (struct era_metadata*) ;
 int open_metadata (struct era_metadata*) ;
 int superblock_all_zeroes (int ,int*) ;

__attribute__((used)) static int open_or_format_metadata(struct era_metadata *md,
       bool may_format)
{
 int r;
 bool unformatted = 0;

 r = superblock_all_zeroes(md->bm, &unformatted);
 if (r)
  return r;

 if (unformatted)
  return may_format ? format_metadata(md) : -EPERM;

 return open_metadata(md);
}
