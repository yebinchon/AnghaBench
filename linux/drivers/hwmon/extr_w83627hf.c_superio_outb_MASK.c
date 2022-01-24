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
struct w83627hf_sio_data {scalar_t__ sioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC1(struct w83627hf_sio_data *sio, int reg, int val)
{
	FUNC0(reg, sio->sioaddr);
	FUNC0(val, sio->sioaddr + 1);
}