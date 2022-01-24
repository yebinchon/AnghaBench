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
typedef  int /*<<< orphan*/  prefix ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_ADDRESS ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/  const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,size_t) ; 

void FUNC2(const char *name, const u8 *buf, size_t len)
{
	char prefix[64];

	if (!buf)
		return;

	FUNC1(prefix, sizeof(prefix), "%s[%zu]: ", name, len);

	FUNC0(KERN_DEBUG, prefix, DUMP_PREFIX_ADDRESS, 16, 1, buf,
		       len, false);
}