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
typedef  int /*<<< orphan*/  u32 ;
struct fritzcard {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fritzcard*,int) ; 

__attribute__((used)) static void
FUNC2(struct fritzcard *fc)
{
	u32 val;

	val = FUNC1(fc, 1);
	FUNC0("%s: HDLC 1 STA %x\n", fc->name, val);
	val = FUNC1(fc, 2);
	FUNC0("%s: HDLC 2 STA %x\n", fc->name, val);
}