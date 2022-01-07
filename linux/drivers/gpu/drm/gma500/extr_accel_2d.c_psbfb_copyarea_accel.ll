; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psbfb_copyarea_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psbfb_copyarea_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.psb_fbdev* }
%struct.psb_fbdev = type { %struct.TYPE_6__, %struct.psb_framebuffer }
%struct.TYPE_6__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_7__*, i32*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.psb_framebuffer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@PSB_2D_SRC_332RGB = common dso_local global i32 0, align 4
@PSB_2D_DST_332RGB = common dso_local global i32 0, align 4
@PSB_2D_SRC_555RGB = common dso_local global i32 0, align 4
@PSB_2D_DST_555RGB = common dso_local global i32 0, align 4
@PSB_2D_SRC_565RGB = common dso_local global i32 0, align 4
@PSB_2D_DST_565RGB = common dso_local global i32 0, align 4
@PSB_2D_SRC_8888ARGB = common dso_local global i32 0, align 4
@PSB_2D_DST_8888ARGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @psbfb_copyarea_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psbfb_copyarea_accel(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.psb_fbdev*, align 8
  %6 = alloca %struct.psb_framebuffer*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_psb_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = load %struct.psb_fbdev*, %struct.psb_fbdev** %15, align 8
  store %struct.psb_fbdev* %16, %struct.psb_fbdev** %5, align 8
  %17 = load %struct.psb_fbdev*, %struct.psb_fbdev** %5, align 8
  %18 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %17, i32 0, i32 1
  store %struct.psb_framebuffer* %18, %struct.psb_framebuffer** %6, align 8
  %19 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %6, align 8
  %20 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %7, align 8
  %23 = load %struct.psb_fbdev*, %struct.psb_fbdev** %5, align 8
  %24 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %25, align 8
  store %struct.drm_framebuffer* %26, %struct.drm_framebuffer** %8, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.drm_psb_private*, %struct.drm_psb_private** %28, align 8
  store %struct.drm_psb_private* %29, %struct.drm_psb_private** %9, align 8
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %31 = icmp ne %struct.drm_framebuffer* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %105

33:                                               ; preds = %2
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %35 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_8__* @to_gtt_range(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %43 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %48 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %64 [
    i32 8, label %52
    i32 15, label %55
    i32 16, label %58
    i32 24, label %61
    i32 32, label %61
  ]

52:                                               ; preds = %33
  %53 = load i32, i32* @PSB_2D_SRC_332RGB, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @PSB_2D_DST_332RGB, align 4
  store i32 %54, i32* %13, align 4
  br label %68

55:                                               ; preds = %33
  %56 = load i32, i32* @PSB_2D_SRC_555RGB, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* @PSB_2D_DST_555RGB, align 4
  store i32 %57, i32* %13, align 4
  br label %68

58:                                               ; preds = %33
  %59 = load i32, i32* @PSB_2D_SRC_565RGB, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @PSB_2D_DST_565RGB, align 4
  store i32 %60, i32* %13, align 4
  br label %68

61:                                               ; preds = %33, %33
  %62 = load i32, i32* @PSB_2D_SRC_8888ARGB, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @PSB_2D_DST_8888ARGB, align 4
  store i32 %63, i32* %13, align 4
  br label %68

64:                                               ; preds = %33
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %67 = call i32 @drm_fb_helper_cfb_copyarea(%struct.fb_info* %65, %struct.fb_copyarea* %66)
  br label %105

68:                                               ; preds = %61, %58, %55, %52
  %69 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %70 = call i32 @gma_power_begin(%struct.drm_device* %69, i32 0)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %74 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %75 = call i32 @drm_fb_helper_cfb_copyarea(%struct.fb_info* %73, %struct.fb_copyarea* %74)
  br label %105

76:                                               ; preds = %68
  %77 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %85 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %88 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %91 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %94 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %97 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %100 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @psb_accel_2d_copy(%struct.drm_psb_private* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98, i32 %101)
  %103 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %104 = call i32 @gma_power_end(%struct.drm_device* %103)
  br label %105

105:                                              ; preds = %76, %72, %64, %32
  ret void
}

declare dso_local %struct.TYPE_8__* @to_gtt_range(i32) #1

declare dso_local i32 @drm_fb_helper_cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @psb_accel_2d_copy(%struct.drm_psb_private*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
