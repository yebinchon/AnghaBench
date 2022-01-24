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
 int /*<<< orphan*/  DAC_DATA ; 
 int /*<<< orphan*/  DAC_INDEX ; 
 int /*<<< orphan*/  MGA1064_GEN_IO_CTL ; 
 int /*<<< orphan*/  MGA1064_GEN_IO_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mga_device *mdev, int mask, int val)
{
	int tmp;

	FUNC1(DAC_INDEX, MGA1064_GEN_IO_CTL);
	tmp = (FUNC0(DAC_DATA) & mask) | val;
	FUNC2(MGA1064_GEN_IO_CTL, tmp);
	FUNC2(MGA1064_GEN_IO_DATA, 0);
}