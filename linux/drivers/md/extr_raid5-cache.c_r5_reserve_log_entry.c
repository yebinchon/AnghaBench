
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {scalar_t__ log_start; } ;
struct r5l_io_unit {int need_split_bio; scalar_t__ log_end; } ;


 int BLOCK_SECTORS ;
 int r5c_update_log_state (struct r5l_log*) ;
 scalar_t__ r5l_ring_add (struct r5l_log*,scalar_t__,int ) ;

__attribute__((used)) static void r5_reserve_log_entry(struct r5l_log *log, struct r5l_io_unit *io)
{
 log->log_start = r5l_ring_add(log, log->log_start, BLOCK_SECTORS);

 r5c_update_log_state(log);







 if (log->log_start == 0)
  io->need_split_bio = 1;

 io->log_end = log->log_start;
}
