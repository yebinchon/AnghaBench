
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fsi_slave {int link; int master; int id; } ;


 int fsi_master_read (int ,int ,int ,int ,void*,size_t) ;
 int fsi_slave_calc_addr (struct fsi_slave*,int *,int *) ;
 int fsi_slave_handle_error (struct fsi_slave*,int,int ,size_t) ;
 int slave_retries ;

int fsi_slave_read(struct fsi_slave *slave, uint32_t addr,
   void *val, size_t size)
{
 uint8_t id = slave->id;
 int rc, err_rc, i;

 rc = fsi_slave_calc_addr(slave, &addr, &id);
 if (rc)
  return rc;

 for (i = 0; i < slave_retries; i++) {
  rc = fsi_master_read(slave->master, slave->link,
    id, addr, val, size);
  if (!rc)
   break;

  err_rc = fsi_slave_handle_error(slave, 0, addr, size);
  if (err_rc)
   break;
 }

 return rc;
}
