
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_metadata {int recursion_count; } ;



__attribute__((used)) static int recursing(struct sm_metadata *smm)
{
 return smm->recursion_count;
}
