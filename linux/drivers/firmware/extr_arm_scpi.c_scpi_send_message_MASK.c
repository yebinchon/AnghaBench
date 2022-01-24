#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct scpi_xfer {unsigned int tx_len; unsigned int rx_len; int status; int /*<<< orphan*/  cmd; int /*<<< orphan*/  done; void* rx_buf; void* tx_buf; int /*<<< orphan*/  slot; } ;
struct scpi_chan {int /*<<< orphan*/  chan; } ;
struct TYPE_2__ {scalar_t__* commands; size_t num_chans; scalar_t__ is_legacy; struct scpi_chan* channels; int /*<<< orphan*/  next_chan; int /*<<< orphan*/  cmd_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MAX_RX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,unsigned int) ; 
 int /*<<< orphan*/  SCPI_SLOT ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 struct scpi_xfer* FUNC4 (struct scpi_chan*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct scpi_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct scpi_xfer*,struct scpi_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* scpi_info ; 
 int /*<<< orphan*/  FUNC8 (struct scpi_chan*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(u8 idx, void *tx_buf, unsigned int tx_len,
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
		chan = FUNC10(cmd, scpi_info->cmd_priority) ? 1 : 0;
	else
		chan = FUNC3(&scpi_info->next_chan) %
			scpi_info->num_chans;
	scpi_chan = scpi_info->channels + chan;

	msg = FUNC4(scpi_chan);
	if (!msg)
		return -ENOMEM;

	if (scpi_info->is_legacy) {
		msg->cmd = FUNC1(cmd, tx_len);
		msg->slot = msg->cmd;
	} else {
		msg->slot = FUNC0(SCPI_SLOT);
		msg->cmd = FUNC2(cmd, tx_len);
	}
	msg->tx_buf = tx_buf;
	msg->tx_len = tx_len;
	msg->rx_buf = rx_buf;
	msg->rx_len = rx_len;
	FUNC7(&msg->done);

	ret = FUNC5(scpi_chan->chan, msg);
	if (ret < 0 || !rx_buf)
		goto out;

	if (!FUNC11(&msg->done, MAX_RX_TIMEOUT))
		ret = -ETIMEDOUT;
	else
		/* first status word */
		ret = msg->status;
out:
	if (ret < 0 && rx_buf) /* remove entry from the list if timed-out */
		FUNC8(scpi_chan, msg->cmd);

	FUNC6(msg, scpi_chan);
	/* SCPI error codes > 0, translate them to Linux scale*/
	return ret > 0 ? FUNC9(ret) : ret;
}