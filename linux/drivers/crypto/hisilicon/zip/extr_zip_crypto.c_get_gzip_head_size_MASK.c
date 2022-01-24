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
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int HZIP_GZIP_HEAD_BUF ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static size_t FUNC3(struct scatterlist *sgl)
{
	char buf[HZIP_GZIP_HEAD_BUF];

	FUNC1(sgl, FUNC2(sgl), buf, sizeof(buf));

	return FUNC0(buf);
}