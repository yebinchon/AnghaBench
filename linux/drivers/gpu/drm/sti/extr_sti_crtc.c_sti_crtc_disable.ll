; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_crtc.c_sti_crtc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_crtc.c_sti_crtc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sti_mixer = type { i64, i32, %struct.device* }
%struct.device = type { i32 }
%struct.sti_compositor = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"CRTC:%d (%s)\0A\00", align 1
@STI_MIXER_MAIN = common dso_local global i64 0, align 8
@STI_MIXER_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @sti_crtc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_crtc_disable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.sti_mixer*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sti_compositor*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = call %struct.sti_mixer* @to_sti_mixer(%struct.drm_crtc* %6)
  store %struct.sti_mixer* %7, %struct.sti_mixer** %3, align 8
  %8 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %9 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.sti_compositor* @dev_get_drvdata(%struct.device* %11)
  store %struct.sti_compositor* %12, %struct.sti_compositor** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %18 = call i32 @sti_mixer_to_str(%struct.sti_mixer* %17)
  %19 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %21 = call i32 @sti_mixer_set_background_status(%struct.sti_mixer* %20, i32 0)
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %23 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %22)
  %24 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %25 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STI_MIXER_MAIN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.sti_compositor*, %struct.sti_compositor** %5, align 8
  %31 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable_unprepare(i32 %32)
  %34 = load %struct.sti_compositor*, %struct.sti_compositor** %5, align 8
  %35 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_disable_unprepare(i32 %36)
  br label %47

38:                                               ; preds = %1
  %39 = load %struct.sti_compositor*, %struct.sti_compositor** %5, align 8
  %40 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  %43 = load %struct.sti_compositor*, %struct.sti_compositor** %5, align 8
  %44 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  br label %47

47:                                               ; preds = %38, %29
  %48 = load i32, i32* @STI_MIXER_DISABLED, align 4
  %49 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %50 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  ret void
}

declare dso_local %struct.sti_mixer* @to_sti_mixer(%struct.drm_crtc*) #1

declare dso_local %struct.sti_compositor* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @sti_mixer_to_str(%struct.sti_mixer*) #1

declare dso_local i32 @sti_mixer_set_background_status(%struct.sti_mixer*, i32) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
