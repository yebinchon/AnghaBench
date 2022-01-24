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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_format_name_buf {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,struct drm_format_name_buf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline const char *FUNC2(u32 fourcc, u64 modifier)
{
	struct drm_format_name_buf buf;
	static char name[64];

	FUNC1(name, sizeof(name), "%s with modifier: 0x%llx.",
		 FUNC0(fourcc, &buf), modifier);

	return name;
}