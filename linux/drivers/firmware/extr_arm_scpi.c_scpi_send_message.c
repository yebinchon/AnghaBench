
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct scpi_xfer {unsigned int tx_len; unsigned int rx_len; int status; int cmd; int done; void* rx_buf; void* tx_buf; int slot; } ;
struct scpi_chan {int chan; } ;
struct TYPE_2__ {scalar_t__* commands; size_t num_chans; scalar_t__ is_legacy; struct scpi_chan* channels; int next_chan; int cmd_priority; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int MAX_RX_TIMEOUT ;
 int PACK_LEGACY_SCPI_CMD (size_t,unsigned int) ;
 int PACK_SCPI_CMD (size_t,unsigned int) ;
 int SCPI_SLOT ;
 size_t atomic_inc_return (int *) ;
 struct scpi_xfer* get_scpi_xfer (struct scpi_chan*) ;
 int mbox_send_message (int ,struct scpi_xfer*) ;
 int put_scpi_xfer (struct scpi_xfer*,struct scpi_chan*) ;
 int reinit_completion (int *) ;
 TYPE_1__* scpi_info ;
 int scpi_process_cmd (struct scpi_chan*,int ) ;
 int scpi_to_linux_errno (int) ;
 scalar_t__ test_bit (size_t,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int scpi_send_message(u8 idx, void *tx_buf, unsigned int tx_len,
        void *rx_buf, unsigned int rx_len)
{
 int ret;
 u8 chan;
 u8 cmd;
 struct scpi_xfer *msg;
 struct scpi_chan *scpi_chan;

 if (scpi_info->commands[idx] < 0)
  return -EOPNOTSUPP;

 cmd = scpi_info->commands[idx];

 if (scpi_info->is_legacy)
  chan = test_bit(cmd, scpi_info->cmd_priority) ? 1 : 0;
 else
  chan = atomic_inc_return(&scpi_info->next_chan) %
   scpi_info->num_chans;
 scpi_chan = scpi_info->channels + chan;

 msg = get_scpi_xfer(scpi_chan);
 if (!msg)
  return -ENOMEM;

 if (scpi_info->is_legacy) {
  msg->cmd = PACK_LEGACY_SCPI_CMD(cmd, tx_len);
  msg->slot = msg->cmd;
 } else {
  msg->slot = BIT(SCPI_SLOT);
  msg->cmd = PACK_SCPI_CMD(cmd, tx_len);
 }
 msg->tx_buf = tx_buf;
 msg->tx_len = tx_len;
 msg->rx_buf = rx_buf;
 msg->rx_len = rx_len;
 reinit_completion(&msg->done);

 ret = mbox_send_message(scpi_chan->chan, msg);
 if (ret < 0 || !rx_buf)
  goto out;

 if (!wait_for_completion_timeout(&msg->done, MAX_RX_TIMEOUT))
  ret = -ETIMEDOUT;
 else

  ret = msg->status;
out:
 if (ret < 0 && rx_buf)
  scpi_process_cmd(scpi_chan, msg->cmd);

 put_scpi_xfer(msg, scpi_chan);

 return ret > 0 ? scpi_to_linux_errno(ret) : ret;
}
