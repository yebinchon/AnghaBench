; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_crtc.c_sti_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_crtc.c_sti_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.sti_mixer = type { %struct.drm_crtc }
%struct.drm_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_plane = type { i32 }

@sti_crtc_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't initialize CRTC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sti_crtc_helper_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"drm CRTC:%d mapped to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_crtc_init(%struct.drm_device* %0, %struct.sti_mixer* %1, %struct.drm_plane* %2, %struct.drm_plane* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.sti_mixer*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.sti_mixer* %1, %struct.sti_mixer** %7, align 8
  store %struct.drm_plane* %2, %struct.drm_plane** %8, align 8
  store %struct.drm_plane* %3, %struct.drm_plane** %9, align 8
  %12 = load %struct.sti_mixer*, %struct.sti_mixer** %7, align 8
  %13 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %12, i32 0, i32 0
  store %struct.drm_crtc* %13, %struct.drm_crtc** %10, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %16 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %18 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %14, %struct.drm_crtc* %15, %struct.drm_plane* %16, %struct.drm_plane* %17, i32* @sti_crtc_funcs, i32* null)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %27 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %26, i32* @sti_crtc_helper_funcs)
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sti_mixer*, %struct.sti_mixer** %7, align 8
  %33 = call i32 @sti_mixer_to_str(%struct.sti_mixer* %32)
  %34 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %21
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @sti_mixer_to_str(%struct.sti_mixer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
