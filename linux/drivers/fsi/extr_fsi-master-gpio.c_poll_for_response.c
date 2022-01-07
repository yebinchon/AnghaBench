
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct fsi_master_gpio {int t_send_delay; int dev; } ;
struct fsi_gpio_msg {int msg; } ;


 int EAGAIN ;
 int EIO ;
 int FSI_CRC_ERR_RETRIES ;
 int FSI_MASTER_DPOLL_CLOCKS ;
 int FSI_MASTER_EPOLL_CLOCKS ;
 int FSI_MASTER_MAX_BUSY ;




 int build_dpoll_command (struct fsi_gpio_msg*,int) ;
 int build_epoll_command (struct fsi_gpio_msg*,int) ;
 int clock_zeros (struct fsi_master_gpio*,int ) ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int echo_delay (struct fsi_master_gpio*) ;
 int issue_term (struct fsi_master_gpio*,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int read_one_response (struct fsi_master_gpio*,int,struct fsi_gpio_msg*,int*) ;
 int serial_out (struct fsi_master_gpio*,struct fsi_gpio_msg*) ;
 int trace_fsi_master_gpio_crc_cmd_error (struct fsi_master_gpio*) ;
 int trace_fsi_master_gpio_crc_rsp_error (struct fsi_master_gpio*) ;
 int trace_fsi_master_gpio_poll_response_busy (struct fsi_master_gpio*,int) ;

__attribute__((used)) static int poll_for_response(struct fsi_master_gpio *master,
  uint8_t slave, uint8_t size, void *data)
{
 struct fsi_gpio_msg response, cmd;
 int busy_count = 0, rc, i;
 unsigned long flags;
 uint8_t tag;
 uint8_t *data_byte = data;
 int crc_err_retries = 0;
retry:
 rc = read_one_response(master, size, &response, &tag);


 if (rc == -EAGAIN) {

  if (crc_err_retries++ > FSI_CRC_ERR_RETRIES) {




   rc = -EIO;
   goto fail;
  }
  dev_dbg(master->dev,
    "CRC error retry %d\n", crc_err_retries);
  trace_fsi_master_gpio_crc_rsp_error(master);
  build_epoll_command(&cmd, slave);
  local_irq_save(flags);
  clock_zeros(master, FSI_MASTER_EPOLL_CLOCKS);
  serial_out(master, &cmd);
  echo_delay(master);
  local_irq_restore(flags);
  goto retry;
 } else if (rc)
  goto fail;

 switch (tag) {
 case 131:
  if (size && data) {
   uint64_t val = response.msg;

   val >>= 4;
   val &= (1ull << (size * 8)) - 1;

   for (i = 0; i < size; i++) {
    data_byte[size-i-1] = val;
    val >>= 8;
   }
  }
  break;
 case 130:





  if (busy_count++ < FSI_MASTER_MAX_BUSY) {
   build_dpoll_command(&cmd, slave);
   local_irq_save(flags);
   clock_zeros(master, FSI_MASTER_DPOLL_CLOCKS);
   serial_out(master, &cmd);
   echo_delay(master);
   local_irq_restore(flags);
   goto retry;
  }
  dev_warn(master->dev,
   "ERR slave is stuck in busy state, issuing TERM\n");
  local_irq_save(flags);
  clock_zeros(master, FSI_MASTER_DPOLL_CLOCKS);
  local_irq_restore(flags);
  issue_term(master, slave);
  rc = -EIO;
  break;

 case 129:
  dev_dbg(master->dev, "ERRA received: 0x%x\n", (int)response.msg);
  rc = -EIO;
  break;
 case 128:
  dev_dbg(master->dev, "ERRC received: 0x%x\n", (int)response.msg);
  trace_fsi_master_gpio_crc_cmd_error(master);
  rc = -EAGAIN;
  break;
 }

 if (busy_count > 0)
  trace_fsi_master_gpio_poll_response_busy(master, busy_count);
 fail:




 local_irq_save(flags);
 clock_zeros(master, master->t_send_delay);
 local_irq_restore(flags);

 return rc;
}
