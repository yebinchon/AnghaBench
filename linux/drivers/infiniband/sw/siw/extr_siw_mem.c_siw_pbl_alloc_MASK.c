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
typedef  int u32 ;
struct siw_pble {int dummy; } ;
struct siw_pbl {int max_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct siw_pbl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct siw_pbl* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct siw_pbl *FUNC2(u32 num_buf)
{
	struct siw_pbl *pbl;
	int buf_size = sizeof(*pbl);

	if (num_buf == 0)
		return FUNC0(-EINVAL);

	buf_size += ((num_buf - 1) * sizeof(struct siw_pble));

	pbl = FUNC1(buf_size, GFP_KERNEL);
	if (!pbl)
		return FUNC0(-ENOMEM);

	pbl->max_buf = num_buf;

	return pbl;
}