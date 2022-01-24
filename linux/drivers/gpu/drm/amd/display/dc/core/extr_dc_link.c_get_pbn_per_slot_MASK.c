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
typedef  int uint32_t ;
struct fixed31_32 {int dummy; } ;
struct dc_stream_state {TYPE_1__* link; } ;
struct TYPE_2__ {int /*<<< orphan*/  cur_link_settings; } ;

/* Variables and functions */
 struct fixed31_32 FUNC0 (struct fixed31_32,int) ; 
 struct fixed31_32 FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fixed31_32 FUNC3(struct dc_stream_state *stream)
{
	struct fixed31_32 mbytes_per_sec;
	uint32_t link_rate_in_mbytes_per_sec = FUNC2(stream->link,
			&stream->link->cur_link_settings);
	link_rate_in_mbytes_per_sec /= 8000; /* Kbits to MBytes */

	mbytes_per_sec = FUNC1(link_rate_in_mbytes_per_sec);

	return FUNC0(mbytes_per_sec, 54);
}