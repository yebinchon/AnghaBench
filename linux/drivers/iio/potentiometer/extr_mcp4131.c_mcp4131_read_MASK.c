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
struct spi_transfer {void* tx_buf; void* rx_buf; size_t len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int FUNC2 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi, void *buf, size_t len)
{
	struct spi_transfer t = {
		.tx_buf = buf, /* We need to send addr, cmd and 12 bits */
		.rx_buf	= buf,
		.len = len,
	};
	struct spi_message m;

	FUNC1(&m);
	FUNC0(&t, &m);

	return FUNC2(spi, &m);
}