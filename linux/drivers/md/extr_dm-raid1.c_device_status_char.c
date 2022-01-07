
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror {int error_type; int error_count; } ;


 int DM_RAID1_FLUSH_ERROR ;
 int DM_RAID1_READ_ERROR ;
 int DM_RAID1_SYNC_ERROR ;
 int DM_RAID1_WRITE_ERROR ;
 int atomic_read (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static char device_status_char(struct mirror *m)
{
 if (!atomic_read(&(m->error_count)))
  return 'A';

 return (test_bit(DM_RAID1_FLUSH_ERROR, &(m->error_type))) ? 'F' :
  (test_bit(DM_RAID1_WRITE_ERROR, &(m->error_type))) ? 'D' :
  (test_bit(DM_RAID1_SYNC_ERROR, &(m->error_type))) ? 'S' :
  (test_bit(DM_RAID1_READ_ERROR, &(m->error_type))) ? 'R' : 'U';
}
