
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; } ;
struct log_c {TYPE_1__ io_req; int disk_header; int log_dev; int ti; } ;
struct dm_dirty_log {scalar_t__ context; } ;


 int destroy_log_context (struct log_c*) ;
 int dm_io_client_destroy (int ) ;
 int dm_put_device (int ,int ) ;
 int vfree (int ) ;

__attribute__((used)) static void disk_dtr(struct dm_dirty_log *log)
{
 struct log_c *lc = (struct log_c *) log->context;

 dm_put_device(lc->ti, lc->log_dev);
 vfree(lc->disk_header);
 dm_io_client_destroy(lc->io_req.client);
 destroy_log_context(lc);
}
