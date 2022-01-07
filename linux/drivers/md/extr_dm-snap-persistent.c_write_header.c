
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pstore {int valid; int version; struct disk_header* header_area; TYPE_1__* store; } ;
struct disk_header {void* chunk_size; void* version; void* valid; void* magic; } ;
struct TYPE_2__ {int chunk_size; } ;


 int REQ_OP_WRITE ;
 int SECTOR_SHIFT ;
 int SNAP_MAGIC ;
 int chunk_io (struct pstore*,struct disk_header*,int ,int ,int ,int) ;
 void* cpu_to_le32 (int) ;
 int memset (struct disk_header*,int ,int) ;

__attribute__((used)) static int write_header(struct pstore *ps)
{
 struct disk_header *dh;

 memset(ps->header_area, 0, ps->store->chunk_size << SECTOR_SHIFT);

 dh = ps->header_area;
 dh->magic = cpu_to_le32(SNAP_MAGIC);
 dh->valid = cpu_to_le32(ps->valid);
 dh->version = cpu_to_le32(ps->version);
 dh->chunk_size = cpu_to_le32(ps->store->chunk_size);

 return chunk_io(ps, ps->header_area, 0, REQ_OP_WRITE, 0, 1);
}
