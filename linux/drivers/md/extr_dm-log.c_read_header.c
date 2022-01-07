
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ magic; int version; scalar_t__ nr_regions; } ;
struct log_c {scalar_t__ sync; TYPE_1__ header; int disk_header; } ;


 scalar_t__ DEFAULTSYNC ;
 int DMWARN (char*) ;
 int EINVAL ;
 int MIRROR_DISK_VERSION ;
 scalar_t__ MIRROR_MAGIC ;
 int REQ_OP_READ ;
 int header_from_disk (TYPE_1__*,int ) ;
 int rw_header (struct log_c*,int ) ;

__attribute__((used)) static int read_header(struct log_c *log)
{
 int r;

 r = rw_header(log, REQ_OP_READ);
 if (r)
  return r;

 header_from_disk(&log->header, log->disk_header);


 if (log->sync != DEFAULTSYNC || log->header.magic != MIRROR_MAGIC) {
  log->header.magic = MIRROR_MAGIC;
  log->header.version = MIRROR_DISK_VERSION;
  log->header.nr_regions = 0;
 }






 if (log->header.version != MIRROR_DISK_VERSION) {
  DMWARN("incompatible disk log version");
  return -EINVAL;
 }

 return 0;
}
