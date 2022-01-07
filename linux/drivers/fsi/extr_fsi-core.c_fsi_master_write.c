
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fsi_master {int (* write ) (struct fsi_master*,int,int ,int ,void const*,size_t) ;} ;


 int fsi_check_access (int ,size_t) ;
 int stub1 (struct fsi_master*,int,int ,int ,void const*,size_t) ;
 int trace_fsi_master_rw_result (struct fsi_master*,int,int ,int ,size_t,int,void const*,int) ;
 int trace_fsi_master_write (struct fsi_master*,int,int ,int ,size_t,void const*) ;

__attribute__((used)) static int fsi_master_write(struct fsi_master *master, int link,
  uint8_t slave_id, uint32_t addr, const void *val, size_t size)
{
 int rc;

 trace_fsi_master_write(master, link, slave_id, addr, size, val);

 rc = fsi_check_access(addr, size);
 if (!rc)
  rc = master->write(master, link, slave_id, addr, val, size);

 trace_fsi_master_rw_result(master, link, slave_id, addr, size,
   1, val, rc);

 return rc;
}
