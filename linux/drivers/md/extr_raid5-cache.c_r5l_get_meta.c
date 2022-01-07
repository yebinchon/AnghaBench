
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5l_log {TYPE_1__* current_io; } ;
struct TYPE_2__ {scalar_t__ meta_offset; } ;


 int ENOMEM ;
 scalar_t__ PAGE_SIZE ;
 TYPE_1__* r5l_new_meta (struct r5l_log*) ;
 int r5l_submit_current_io (struct r5l_log*) ;

__attribute__((used)) static int r5l_get_meta(struct r5l_log *log, unsigned int payload_size)
{
 if (log->current_io &&
     log->current_io->meta_offset + payload_size > PAGE_SIZE)
  r5l_submit_current_io(log);

 if (!log->current_io) {
  log->current_io = r5l_new_meta(log);
  if (!log->current_io)
   return -ENOMEM;
 }

 return 0;
}
