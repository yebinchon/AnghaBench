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
struct pasemi_smbus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SMSTA ; 
 unsigned int FUNC0 (struct pasemi_smbus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pasemi_smbus*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct pasemi_smbus *smbus)
{
	unsigned int status;

	status = FUNC0(smbus, REG_SMSTA);
	FUNC1(smbus, REG_SMSTA, status);
}