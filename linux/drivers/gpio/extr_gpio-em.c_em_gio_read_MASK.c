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
struct em_gio_priv {int base0; int base1; } ;

/* Variables and functions */
 int GIO_IDT0 ; 
 unsigned long FUNC0 (int) ; 

__attribute__((used)) static inline unsigned long FUNC1(struct em_gio_priv *p, int offs)
{
	if (offs < GIO_IDT0)
		return FUNC0(p->base0 + offs);
	else
		return FUNC0(p->base1 + (offs - GIO_IDT0));
}