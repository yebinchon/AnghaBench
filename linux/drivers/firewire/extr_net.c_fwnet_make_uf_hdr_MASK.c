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
struct rfc2734_header {int w0; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFC2374_HDR_UNFRAG ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct rfc2734_header *hdr,
		unsigned ether_type)
{
	hdr->w0 = FUNC1(RFC2374_HDR_UNFRAG)
		  | FUNC0(ether_type);
}