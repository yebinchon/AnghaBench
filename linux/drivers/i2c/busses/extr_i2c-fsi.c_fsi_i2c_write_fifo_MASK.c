#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; } ;
struct fsi_i2c_port {size_t xfrd; struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {int fifo_size; int /*<<< orphan*/  fsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_FSI_FIFO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct fsi_i2c_port *port, struct i2c_msg *msg,
			      u8 fifo_count)
{
	int write;
	int rc;
	struct fsi_i2c_master *i2c = port->master;
	int bytes_to_write = i2c->fifo_size - fifo_count;
	int bytes_remaining = msg->len - port->xfrd;

	bytes_to_write = FUNC2(bytes_to_write, bytes_remaining);

	while (bytes_to_write) {
		write = FUNC1(bytes_to_write);

		rc = FUNC0(i2c->fsi, I2C_FSI_FIFO,
				      &msg->buf[port->xfrd], write);
		if (rc)
			return rc;

		port->xfrd += write;
		bytes_to_write -= write;
	}

	return 0;
}