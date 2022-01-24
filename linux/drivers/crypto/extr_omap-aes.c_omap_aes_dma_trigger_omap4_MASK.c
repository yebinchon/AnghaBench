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
struct omap_aes_dev {int flags; int assoc_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_REG_A_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAGS_GCM ; 
 int /*<<< orphan*/  FUNC1 (struct omap_aes_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_aes_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct omap_aes_dev *dd, int length)
{
	FUNC2(dd, FUNC0(0), length);
	FUNC2(dd, FUNC0(1), 0);
	if (dd->flags & FLAGS_GCM)
		FUNC2(dd, AES_REG_A_LEN, dd->assoc_len);

	FUNC1(dd, length);
}