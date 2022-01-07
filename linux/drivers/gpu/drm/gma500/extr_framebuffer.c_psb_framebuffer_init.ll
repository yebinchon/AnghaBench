; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.psb_framebuffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32** }
%struct.drm_mode_fb_cmd2 = type { i32* }
%struct.gtt_range = type { i32 }
%struct.drm_format_info = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@psb_fb_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"framebuffer init failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.psb_framebuffer*, %struct.drm_mode_fb_cmd2*, %struct.gtt_range*)* @psb_framebuffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_framebuffer_init(%struct.drm_device* %0, %struct.psb_framebuffer* %1, %struct.drm_mode_fb_cmd2* %2, %struct.gtt_range* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.psb_framebuffer*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %9 = alloca %struct.gtt_range*, align 8
  %10 = alloca %struct.drm_format_info*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.psb_framebuffer* %1, %struct.psb_framebuffer** %7, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %8, align 8
  store %struct.gtt_range* %3, %struct.gtt_range** %9, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %14 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %12, %struct.drm_mode_fb_cmd2* %13)
  store %struct.drm_format_info* %14, %struct.drm_format_info** %10, align 8
  %15 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %16 = icmp ne %struct.drm_format_info* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %19 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %24 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %17, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %70

32:                                               ; preds = %22
  %33 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %34 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 63
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %70

43:                                               ; preds = %32
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %7, align 8
  %46 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %45, i32 0, i32 0
  %47 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %48 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %44, %struct.TYPE_3__* %46, %struct.drm_mode_fb_cmd2* %47)
  %49 = load %struct.gtt_range*, %struct.gtt_range** %9, align 8
  %50 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %49, i32 0, i32 0
  %51 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %7, align 8
  %52 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  store i32* %50, i32** %55, align 8
  %56 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %57 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %7, align 8
  %58 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %57, i32 0, i32 0
  %59 = call i32 @drm_framebuffer_init(%struct.drm_device* %56, %struct.TYPE_3__* %58, i32* @psb_fb_funcs)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %43
  %63 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %62, %40, %29
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, %struct.TYPE_3__*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
