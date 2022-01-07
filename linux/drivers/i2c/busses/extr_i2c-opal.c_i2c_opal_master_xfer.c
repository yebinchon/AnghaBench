
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_i2c_request {int subaddr_sz; int subaddr; void* buffer_ra; void* size; void* addr; int type; } ;
struct i2c_msg {int flags; int len; int* buf; int addr; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;
typedef int req ;


 int I2C_M_RD ;
 int OPAL_I2C_RAW_READ ;
 int OPAL_I2C_RAW_WRITE ;
 int OPAL_I2C_SM_READ ;
 int OPAL_I2C_SM_WRITE ;
 int __pa (int*) ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (int ) ;
 int i2c_opal_send_request (unsigned long,struct opal_i2c_request*) ;
 int memset (struct opal_i2c_request*,int ,int) ;

__attribute__((used)) static int i2c_opal_master_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
    int num)
{
 unsigned long opal_id = (unsigned long)adap->algo_data;
 struct opal_i2c_request req;
 int rc, i;




 memset(&req, 0, sizeof(req));
 switch(num) {
 case 1:
  req.type = (msgs[0].flags & I2C_M_RD) ?
   OPAL_I2C_RAW_READ : OPAL_I2C_RAW_WRITE;
  req.addr = cpu_to_be16(msgs[0].addr);
  req.size = cpu_to_be32(msgs[0].len);
  req.buffer_ra = cpu_to_be64(__pa(msgs[0].buf));
  break;
 case 2:
  req.type = (msgs[1].flags & I2C_M_RD) ?
   OPAL_I2C_SM_READ : OPAL_I2C_SM_WRITE;
  req.addr = cpu_to_be16(msgs[0].addr);
  req.subaddr_sz = msgs[0].len;
  for (i = 0; i < msgs[0].len; i++)
   req.subaddr = (req.subaddr << 8) | msgs[0].buf[i];
  req.subaddr = cpu_to_be32(req.subaddr);
  req.size = cpu_to_be32(msgs[1].len);
  req.buffer_ra = cpu_to_be64(__pa(msgs[1].buf));
  break;
 }

 rc = i2c_opal_send_request(opal_id, &req);
 if (rc)
  return rc;

 return num;
}
