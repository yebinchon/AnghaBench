; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.gtt_range = type { i32 }
%struct.psb_framebuffer = type { %struct.drm_framebuffer }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.gtt_range*)* @psb_framebuffer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @psb_framebuffer_create(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.gtt_range* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.gtt_range*, align 8
  %8 = alloca %struct.psb_framebuffer*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.gtt_range* %2, %struct.gtt_range** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.psb_framebuffer* @kzalloc(i32 4, i32 %10)
  store %struct.psb_framebuffer* %11, %struct.psb_framebuffer** %8, align 8
  %12 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %8, align 8
  %13 = icmp ne %struct.psb_framebuffer* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.drm_framebuffer* @ERR_PTR(i32 %16)
  store %struct.drm_framebuffer* %17, %struct.drm_framebuffer** %4, align 8
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %8, align 8
  %21 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %22 = load %struct.gtt_range*, %struct.gtt_range** %7, align 8
  %23 = call i32 @psb_framebuffer_init(%struct.drm_device* %19, %struct.psb_framebuffer* %20, %struct.drm_mode_fb_cmd2* %21, %struct.gtt_range* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %8, align 8
  %28 = call i32 @kfree(%struct.psb_framebuffer* %27)
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.drm_framebuffer* @ERR_PTR(i32 %29)
  store %struct.drm_framebuffer* %30, %struct.drm_framebuffer** %4, align 8
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %8, align 8
  %33 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %32, i32 0, i32 0
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %4, align 8
  br label %34

34:                                               ; preds = %31, %26, %14
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %35
}

declare dso_local %struct.psb_framebuffer* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @psb_framebuffer_init(%struct.drm_device*, %struct.psb_framebuffer*, %struct.drm_mode_fb_cmd2*, %struct.gtt_range*) #1

declare dso_local i32 @kfree(%struct.psb_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
