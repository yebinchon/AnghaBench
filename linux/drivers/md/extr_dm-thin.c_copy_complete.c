
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_new_mapping {int status; } ;


 int BLK_STS_IOERR ;
 int complete_mapping_preparation (struct dm_thin_new_mapping*) ;

__attribute__((used)) static void copy_complete(int read_err, unsigned long write_err, void *context)
{
 struct dm_thin_new_mapping *m = context;

 m->status = read_err || write_err ? BLK_STS_IOERR : 0;
 complete_mapping_preparation(m);
}
