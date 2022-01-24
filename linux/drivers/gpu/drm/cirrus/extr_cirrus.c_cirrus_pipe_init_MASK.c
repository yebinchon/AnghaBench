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
struct cirrus_device {int /*<<< orphan*/  conn; int /*<<< orphan*/  pipe; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cirrus_formats ; 
 int /*<<< orphan*/  cirrus_modifiers ; 
 int /*<<< orphan*/  cirrus_pipe_funcs ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct cirrus_device *cirrus)
{
	return FUNC1(&cirrus->dev,
					    &cirrus->pipe,
					    &cirrus_pipe_funcs,
					    cirrus_formats,
					    FUNC0(cirrus_formats),
					    cirrus_modifiers,
					    &cirrus->conn);
}