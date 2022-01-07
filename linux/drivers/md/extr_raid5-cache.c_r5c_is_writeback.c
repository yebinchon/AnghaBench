
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {scalar_t__ r5c_journal_mode; } ;


 scalar_t__ R5C_JOURNAL_MODE_WRITE_BACK ;

bool r5c_is_writeback(struct r5l_log *log)
{
 return (log != ((void*)0) &&
  log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_BACK);
}
