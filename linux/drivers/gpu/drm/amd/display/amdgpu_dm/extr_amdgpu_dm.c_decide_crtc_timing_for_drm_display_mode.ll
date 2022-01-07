; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_decide_crtc_timing_for_drm_display_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_decide_crtc_timing_for_drm_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_display_mode*, %struct.drm_display_mode*, i32)* @decide_crtc_timing_for_drm_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decide_crtc_timing_for_drm_display_mode(%struct.drm_display_mode* %0, %struct.drm_display_mode* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %12 = call i32 @copy_crtc_timing_for_drm_display_mode(%struct.drm_display_mode* %10, %struct.drm_display_mode* %11)
  br label %43

13:                                               ; preds = %3
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %13
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %40 = call i32 @copy_crtc_timing_for_drm_display_mode(%struct.drm_display_mode* %38, %struct.drm_display_mode* %39)
  br label %42

41:                                               ; preds = %29, %21, %13
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %9
  ret void
}

declare dso_local i32 @copy_crtc_timing_for_drm_display_mode(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
