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

/* Variables and functions */
 int FIFOLD_CLASS_BOTH ; 
 int FIFOLD_TYPE_LASTBOTH ; 
 int FIFOST_TYPE_MESSAGE_DATA ; 
 int KEY_VLF ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(u32 *desc, u32 msg_type)
{
	FUNC1(desc, 0, FIFOST_TYPE_MESSAGE_DATA | KEY_VLF);
	FUNC0(desc, 0, FIFOLD_CLASS_BOTH |
			     KEY_VLF | msg_type | FIFOLD_TYPE_LASTBOTH);
}