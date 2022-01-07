
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_metadata {int recursion_count; } ;


 int DMERR (char*) ;
 int ENOMEM ;
 int apply_bops (struct sm_metadata*) ;

__attribute__((used)) static int out(struct sm_metadata *smm)
{
 int r = 0;




 if (!smm->recursion_count) {
  DMERR("lost track of recursion depth");
  return -ENOMEM;
 }

 if (smm->recursion_count == 1)
  r = apply_bops(smm);

 smm->recursion_count--;

 return r;
}
