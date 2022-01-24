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
typedef  int /*<<< orphan*/  u_int ;
struct mISDNdevice {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _get_mdevice ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mISDNdevice* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mISDN_class ; 

struct mISDNdevice
*FUNC2(u_int id)
{
	return FUNC1(FUNC0(&mISDN_class, NULL, &id,
					      _get_mdevice));
}