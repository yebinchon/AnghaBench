#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {int* ptr; } ;
struct btree {TYPE_1__ key; } ;
struct bset {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,void*,int) ; 
 void* FUNC1 (struct bset*) ; 

__attribute__((used)) static uint64_t FUNC2(struct btree *b, struct bset *i)
{
	uint64_t crc = b->key.ptr[0];
	void *data = (void *) i + 8, *end = FUNC1(i);

	crc = FUNC0(crc, data, end - data);
	return crc ^ 0xffffffffffffffffULL;
}