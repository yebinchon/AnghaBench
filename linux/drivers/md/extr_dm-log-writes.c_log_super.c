
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int super ;
struct log_writes_c {int super_done; int sectorsize; int logged_entries; } ;
struct log_write_super {int sectorsize; void* nr_entries; void* version; void* magic; } ;


 int DMERR (char*) ;
 int WRITE_LOG_MAGIC ;
 int WRITE_LOG_SUPER_SECTOR ;
 int WRITE_LOG_VERSION ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int wait_for_completion_io (int *) ;
 scalar_t__ write_metadata (struct log_writes_c*,struct log_write_super*,int,int *,int ,int ) ;

__attribute__((used)) static int log_super(struct log_writes_c *lc)
{
 struct log_write_super super;

 super.magic = cpu_to_le64(WRITE_LOG_MAGIC);
 super.version = cpu_to_le64(WRITE_LOG_VERSION);
 super.nr_entries = cpu_to_le64(lc->logged_entries);
 super.sectorsize = cpu_to_le32(lc->sectorsize);

 if (write_metadata(lc, &super, sizeof(super), ((void*)0), 0,
      WRITE_LOG_SUPER_SECTOR)) {
  DMERR("Couldn't write super");
  return -1;
 }





 wait_for_completion_io(&lc->super_done);

 return 0;
}
