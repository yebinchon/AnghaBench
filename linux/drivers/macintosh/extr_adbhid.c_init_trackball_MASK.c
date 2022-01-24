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
struct adb_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADBREQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adb_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void 
FUNC2(int id)
{
	struct adb_request req;

	FUNC1(&req, NULL, ADBREQ_SYNC, 3,
	FUNC0(id,1), 00,0x81);

	FUNC1(&req, NULL, ADBREQ_SYNC, 3,
	FUNC0(id,1), 01,0x81);

	FUNC1(&req, NULL, ADBREQ_SYNC, 3,
	FUNC0(id,1), 02,0x81);

	FUNC1(&req, NULL, ADBREQ_SYNC, 3,
	FUNC0(id,1), 03,0x38);

	FUNC1(&req, NULL, ADBREQ_SYNC, 3,
	FUNC0(id,1), 00,0x81);

	FUNC1(&req, NULL, ADBREQ_SYNC, 3,
	FUNC0(id,1), 01,0x81);

	FUNC1(&req, NULL, ADBREQ_SYNC, 3,
	FUNC0(id,1), 02,0x81);

	FUNC1(&req, NULL, ADBREQ_SYNC, 3,
	FUNC0(id,1), 03,0x38);
}