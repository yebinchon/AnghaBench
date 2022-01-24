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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  tx ;
struct spi_transfer {scalar_t__ len; int /*<<< orphan*/  const* tx_buf; } ;
struct spi_message {int dummy; } ;
struct cxd2880_spi_device {int /*<<< orphan*/  spi; } ;
struct cxd2880_spi {struct cxd2880_spi_device* user; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC4(struct cxd2880_spi *spi,
				    const u8 *data, u32 size)
{
	struct cxd2880_spi_device *spi_device = NULL;
	struct spi_message msg;
	struct spi_transfer tx;
	int result = 0;

	if (!spi || !spi->user || !data || size == 0)
		return -EINVAL;

	spi_device = spi->user;

	FUNC0(&tx, 0, sizeof(tx));
	tx.tx_buf = data;
	tx.len = size;

	FUNC2(&msg);
	FUNC1(&tx, &msg);
	result = FUNC3(spi_device->spi, &msg);

	if (result < 0)
		return -EIO;

	return 0;
}