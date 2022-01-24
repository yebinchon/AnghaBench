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
typedef  int u8 ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 size_t EINVAL ; 
#define  HZIP_ALG_TYPE_GZIP 129 
#define  HZIP_ALG_TYPE_ZLIB 128 
 size_t FUNC0 (int const) ; 
 size_t FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static size_t FUNC3(struct scatterlist *src, u8 req_type)
{
	switch (req_type) {
	case HZIP_ALG_TYPE_ZLIB:
		return FUNC0(HZIP_ALG_TYPE_ZLIB);
	case HZIP_ALG_TYPE_GZIP:
		return FUNC1(src);
	default:
		FUNC2("request type does not support!\n");
		return -EINVAL;
	}
}