
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeset {int dummy; } ;
struct era_metadata {struct writeset* writesets; struct writeset* current_writeset; } ;



__attribute__((used)) static struct writeset *next_writeset(struct era_metadata *md)
{
 return (md->current_writeset == &md->writesets[0]) ?
  &md->writesets[1] : &md->writesets[0];
}
