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
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (char*,unsigned int,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(char *buf, unsigned int size, const __be64 *guid)
{
	const __be16 *g = (const __be16 *)guid;

	return FUNC1(buf, size, "%04x:%04x:%04x:%04x",
			FUNC0(g[0]), FUNC0(g[1]),
			FUNC0(g[2]), FUNC0(g[3]));
}