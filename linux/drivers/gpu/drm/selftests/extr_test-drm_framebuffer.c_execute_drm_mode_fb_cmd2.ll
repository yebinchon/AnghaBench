; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_framebuffer.c_execute_drm_mode_fb_cmd2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_framebuffer.c_execute_drm_mode_fb_cmd2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.drm_framebuffer = type { i32 }

@mock_drm_device = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mode_fb_cmd2*)* @execute_drm_mode_fb_cmd2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_drm_mode_fb_cmd2(%struct.drm_mode_fb_cmd2* %0) #0 {
  %2 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_mode_fb_cmd2* %0, %struct.drm_mode_fb_cmd2** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* %3, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mock_drm_device, i32 0, i32 0), align 8
  %5 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %2, align 8
  %6 = call %struct.drm_framebuffer* @drm_internal_framebuffer_create(%struct.TYPE_3__* @mock_drm_device, %struct.drm_mode_fb_cmd2* %5, i32* null)
  store %struct.drm_framebuffer* %6, %struct.drm_framebuffer** %4, align 8
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

declare dso_local %struct.drm_framebuffer* @drm_internal_framebuffer_create(%struct.TYPE_3__*, %struct.drm_mode_fb_cmd2*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
