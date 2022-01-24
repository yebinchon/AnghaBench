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
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;

/* Variables and functions */
 struct dcn10_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  DP_PIXEL_COMBINE ; 
 int /*<<< orphan*/  DP_PIXEL_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(
	struct stream_encoder *enc,
	bool odm_combine)
{
	struct dcn10_stream_encoder *enc1 = FUNC0(enc);

	FUNC1(DP_PIXEL_FORMAT, DP_PIXEL_COMBINE, odm_combine);
}