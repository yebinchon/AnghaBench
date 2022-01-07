; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_gcp_default_phase_possible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_gcp_default_phase_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.drm_display_mode*)* @gcp_default_phase_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcp_default_phase_possible(i32 %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %11 [
    i32 30, label %8
    i32 36, label %9
    i32 48, label %10
  ]

8:                                                ; preds = %2
  store i32 4, i32* %6, align 4
  br label %12

9:                                                ; preds = %2
  store i32 2, i32* %6, align 4
  br label %12

10:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

12:                                               ; preds = %10, %9, %8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = urem i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %12
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = urem i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %71

26:                                               ; preds = %19
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = urem i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %26
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = urem i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %33
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = urem i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %40
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = urem i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %54
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = udiv i32 %64, 2
  %66 = load i32, i32* %6, align 4
  %67 = urem i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br label %69

69:                                               ; preds = %61, %54
  %70 = phi i1 [ true, %54 ], [ %68, %61 ]
  br label %71

71:                                               ; preds = %69, %47, %40, %33, %26, %19, %12
  %72 = phi i1 [ false, %47 ], [ false, %40 ], [ false, %33 ], [ false, %26 ], [ false, %19 ], [ false, %12 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
