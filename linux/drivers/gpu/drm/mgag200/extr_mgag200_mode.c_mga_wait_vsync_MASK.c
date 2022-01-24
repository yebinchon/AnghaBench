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
struct mga_device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MGAREG_Status ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 scalar_t__ FUNC1 (int,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct mga_device *mdev)
{
	unsigned long timeout = jiffies + HZ/10;
	unsigned int status = 0;

	do {
		status = FUNC0(MGAREG_Status);
	} while ((status & 0x08) && FUNC1(jiffies, timeout));
	timeout = jiffies + HZ/10;
	status = 0;
	do {
		status = FUNC0(MGAREG_Status);
	} while (!(status & 0x08) && FUNC1(jiffies, timeout));
}