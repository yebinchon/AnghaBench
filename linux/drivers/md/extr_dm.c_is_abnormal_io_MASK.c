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
struct bio {int dummy; } ;

/* Variables and functions */
#define  REQ_OP_DISCARD 131 
#define  REQ_OP_SECURE_ERASE 130 
#define  REQ_OP_WRITE_SAME 129 
#define  REQ_OP_WRITE_ZEROES 128 
 int FUNC0 (struct bio*) ; 

__attribute__((used)) static bool FUNC1(struct bio *bio)
{
	bool r = false;

	switch (FUNC0(bio)) {
	case REQ_OP_DISCARD:
	case REQ_OP_SECURE_ERASE:
	case REQ_OP_WRITE_SAME:
	case REQ_OP_WRITE_ZEROES:
		r = true;
		break;
	}

	return r;
}