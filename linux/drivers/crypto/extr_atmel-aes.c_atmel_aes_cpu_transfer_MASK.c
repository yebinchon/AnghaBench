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
typedef  int u32 ;
struct atmel_aes_dev {int data; scalar_t__ datalen; int (* resume ) (struct atmel_aes_dev*) ;int (* cpu_transfer_complete ) (struct atmel_aes_dev*) ;int /*<<< orphan*/  total; int /*<<< orphan*/  buf; int /*<<< orphan*/  real_dst; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AES_IER ; 
 int AES_INT_DATARDY ; 
 int /*<<< orphan*/  AES_ISR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int FUNC2 (struct atmel_aes_dev*,int) ; 
 int FUNC3 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct atmel_aes_dev*) ; 

__attribute__((used)) static int FUNC10(struct atmel_aes_dev *dd)
{
	int err = 0;
	u32 isr;

	for (;;) {
		FUNC4(dd, FUNC1(0), dd->data);
		dd->data += 4;
		dd->datalen -= AES_BLOCK_SIZE;

		if (dd->datalen < AES_BLOCK_SIZE)
			break;

		FUNC6(dd, FUNC0(0), dd->data);

		isr = FUNC3(dd, AES_ISR);
		if (!(isr & AES_INT_DATARDY)) {
			dd->resume = atmel_aes_cpu_transfer;
			FUNC5(dd, AES_IER, AES_INT_DATARDY);
			return -EINPROGRESS;
		}
	}

	if (!FUNC7(dd->real_dst, FUNC8(dd->real_dst),
				 dd->buf, dd->total))
		err = -EINVAL;

	if (err)
		return FUNC2(dd, err);

	return dd->cpu_transfer_complete(dd);
}