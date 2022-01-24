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
struct steam_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STEAM_CMD_REQUEST_COMM_STATUS ; 
 int FUNC0 (struct steam_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct steam_device *steam)
{
	return FUNC0(steam, STEAM_CMD_REQUEST_COMM_STATUS);
}