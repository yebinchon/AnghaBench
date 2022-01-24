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
struct nv50_ramseq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * mr ; 
 int /*<<< orphan*/  FUNC0 (struct nv50_ramseq*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_ramseq*,int) ; 

__attribute__((used)) static void
FUNC2(struct nv50_ramseq *hwsq)
{
	FUNC0(hwsq, mr[0], 0x100, 0x100);
	FUNC0(hwsq, mr[0], 0x100, 0x000);
	FUNC1(hwsq, 24000);
}