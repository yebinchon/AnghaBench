
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct era {int digest; TYPE_1__* md; } ;
struct TYPE_2__ {int archived_writesets; } ;


 int metadata_digest_start (TYPE_1__*,int *) ;

__attribute__((used)) static void kick_off_digest(struct era *era)
{
 if (era->md->archived_writesets) {
  era->md->archived_writesets = 0;
  metadata_digest_start(era->md, &era->digest);
 }
}
