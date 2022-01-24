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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC3(const char *const mac, const __be32 inaddr, char *raw_gid)
{
	raw_gid[0] = 0xfe;
	raw_gid[1] = 0x80;
	FUNC2(&raw_gid[2], 0, 2);
	FUNC1(&raw_gid[4], &inaddr, 4);
	FUNC0(&raw_gid[8], mac);
}