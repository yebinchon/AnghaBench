
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* flags; void* type; } ;
struct r5l_payload_flush {int * flush_stripes; int size; TYPE_2__ header; } ;
struct r5l_log {int io_mutex; struct r5l_io_unit* current_io; TYPE_1__* rdev; } ;
struct r5l_io_unit {int meta_offset; int has_flush_payload; int pending_stripe; int meta_page; } ;
struct r5conf {scalar_t__ quiesce; } ;
struct mddev {struct r5conf* private; } ;
typedef int sector_t ;
typedef int __le64 ;
struct TYPE_3__ {struct mddev* mddev; } ;


 int R5LOG_PAYLOAD_FLUSH ;
 int atomic_inc (int *) ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r5l_payload_flush* page_address (int ) ;
 scalar_t__ r5l_get_meta (struct r5l_log*,int) ;

__attribute__((used)) static void r5l_append_flush_payload(struct r5l_log *log, sector_t sect)
{
 struct mddev *mddev = log->rdev->mddev;
 struct r5conf *conf = mddev->private;
 struct r5l_io_unit *io;
 struct r5l_payload_flush *payload;
 int meta_size;






 if (conf->quiesce)
  return;

 mutex_lock(&log->io_mutex);
 meta_size = sizeof(struct r5l_payload_flush) + sizeof(__le64);

 if (r5l_get_meta(log, meta_size)) {
  mutex_unlock(&log->io_mutex);
  return;
 }


 io = log->current_io;
 payload = page_address(io->meta_page) + io->meta_offset;
 payload->header.type = cpu_to_le16(R5LOG_PAYLOAD_FLUSH);
 payload->header.flags = cpu_to_le16(0);
 payload->size = cpu_to_le32(sizeof(__le64));
 payload->flush_stripes[0] = cpu_to_le64(sect);
 io->meta_offset += meta_size;

 if (!io->has_flush_payload) {
  io->has_flush_payload = 1;
  atomic_inc(&io->pending_stripe);
 }
 mutex_unlock(&log->io_mutex);
}
