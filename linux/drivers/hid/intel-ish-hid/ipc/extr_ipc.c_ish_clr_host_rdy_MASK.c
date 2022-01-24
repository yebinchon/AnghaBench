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
typedef  int /*<<< orphan*/  uint32_t ;
struct ishtp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_REG_HOST_COMM ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ishtp_device *dev)
{
	uint32_t host_status = FUNC1(dev, IPC_REG_HOST_COMM);

	FUNC0(host_status);
	FUNC2(dev, IPC_REG_HOST_COMM, host_status);
}