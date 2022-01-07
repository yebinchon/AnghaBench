
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multipath {scalar_t__ queue_mode; int process_queued_bios; TYPE_1__* ti; } ;
struct TYPE_2__ {int table; } ;


 scalar_t__ DM_TYPE_BIO_BASED ;
 scalar_t__ DM_TYPE_REQUEST_BASED ;
 int dm_mq_kick_requeue_list (int ) ;
 int dm_table_get_md (int ) ;
 int kmultipathd ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void process_queued_io_list(struct multipath *m)
{
 if (m->queue_mode == DM_TYPE_REQUEST_BASED)
  dm_mq_kick_requeue_list(dm_table_get_md(m->ti->table));
 else if (m->queue_mode == DM_TYPE_BIO_BASED)
  queue_work(kmultipathd, &m->process_queued_bios);
}
