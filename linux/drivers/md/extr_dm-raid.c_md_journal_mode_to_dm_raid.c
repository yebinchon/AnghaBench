
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const mode; char const* param; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* _raid456_journal_mode ;

__attribute__((used)) static const char *md_journal_mode_to_dm_raid(const int mode)
{
 int m = ARRAY_SIZE(_raid456_journal_mode);

 while (m--)
  if (mode == _raid456_journal_mode[m].mode)
   return _raid456_journal_mode[m].param;

 return "unknown";
}
