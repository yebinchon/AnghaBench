
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int param; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* _raid456_journal_mode ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static int dm_raid_journal_mode_to_md(const char *mode)
{
 int m = ARRAY_SIZE(_raid456_journal_mode);

 while (m--)
  if (!strcasecmp(mode, _raid456_journal_mode[m].param))
   return _raid456_journal_mode[m].mode;

 return -EINVAL;
}
