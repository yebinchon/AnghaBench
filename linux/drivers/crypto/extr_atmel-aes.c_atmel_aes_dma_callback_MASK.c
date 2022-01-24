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
struct atmel_aes_dev {int is_async; int /*<<< orphan*/  (* resume ) (struct atmel_aes_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_aes_dev*) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	struct atmel_aes_dev *dd = data;

	FUNC0(dd);
	dd->is_async = true;
	(void)dd->resume(dd);
}