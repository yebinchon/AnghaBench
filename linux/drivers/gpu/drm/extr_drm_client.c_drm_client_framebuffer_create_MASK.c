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
typedef  int /*<<< orphan*/  u32 ;
struct drm_client_dev {int dummy; } ;
struct drm_client_buffer {int dummy; } ;

/* Variables and functions */
 struct drm_client_buffer* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_client_buffer*) ; 
 int FUNC2 (struct drm_client_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_client_buffer* FUNC3 (struct drm_client_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_client_buffer*) ; 

struct drm_client_buffer *
FUNC5(struct drm_client_dev *client, u32 width, u32 height, u32 format)
{
	struct drm_client_buffer *buffer;
	int ret;

	buffer = FUNC3(client, width, height, format);
	if (FUNC1(buffer))
		return buffer;

	ret = FUNC2(buffer, width, height, format);
	if (ret) {
		FUNC4(buffer);
		return FUNC0(ret);
	}

	return buffer;
}