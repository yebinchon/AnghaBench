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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct atmel_aes_dev {size_t total; size_t datalen; int /*<<< orphan*/ * data; scalar_t__ buf; int /*<<< orphan*/  cpu_transfer_complete; struct scatterlist* real_dst; } ;
typedef  int /*<<< orphan*/  atmel_aes_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  atmel_aes_cpu_transfer ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct atmel_aes_dev *dd,
			       struct scatterlist *src,
			       struct scatterlist *dst,
			       size_t len,
			       atmel_aes_fn_t resume)
{
	size_t padlen = FUNC1(len, AES_BLOCK_SIZE);

	if (FUNC6(len == 0))
		return -EINVAL;

	FUNC4(src, FUNC5(src), dd->buf, len);

	dd->total = len;
	dd->real_dst = dst;
	dd->cpu_transfer_complete = resume;
	dd->datalen = len + padlen;
	dd->data = (u32 *)dd->buf;
	FUNC3(dd, FUNC0(0), dd->data);
	return FUNC2(dd, atmel_aes_cpu_transfer);
}