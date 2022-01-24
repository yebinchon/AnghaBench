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
struct amd_smbus {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AMD_EC_CMD ; 
 unsigned char AMD_EC_CMD_RD ; 
 scalar_t__ AMD_EC_DATA ; 
 int FUNC0 (struct amd_smbus*) ; 
 int FUNC1 (struct amd_smbus*) ; 
 unsigned char FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct amd_smbus *smbus, unsigned char address,
		unsigned char *data)
{
	int status;

	status = FUNC1(smbus);
	if (status)
		return status;
	FUNC3(AMD_EC_CMD_RD, smbus->base + AMD_EC_CMD);

	status = FUNC1(smbus);
	if (status)
		return status;
	FUNC3(address, smbus->base + AMD_EC_DATA);

	status = FUNC0(smbus);
	if (status)
		return status;
	*data = FUNC2(smbus->base + AMD_EC_DATA);

	return 0;
}