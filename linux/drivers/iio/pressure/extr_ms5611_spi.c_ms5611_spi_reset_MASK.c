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
typedef  int /*<<< orphan*/  u8 ;
struct ms5611_state {int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MS5611_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct ms5611_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	u8 cmd = MS5611_RESET;
	struct ms5611_state *st = FUNC1(FUNC0(dev));

	return FUNC2(st->client, &cmd, 1, NULL, 0);
}