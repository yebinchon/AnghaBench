; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ns2501.c_ns2501_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ns2501.c_ns2501_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"is mode valid (hdisplay=%d,htotal=%d,vdisplay=%d,vtotal=%d)\0A\00", align 1
@MODE_OK = common dso_local global i32 0, align 4
@MODE_ONE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*, %struct.drm_display_mode*)* @ns2501_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2501_mode_valid(%struct.intel_dvo_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %6 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %7 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17)
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 640
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 480
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 25175
  br i1 %32, label %63, label %33

33:                                               ; preds = %28, %23, %2
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 800
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 600
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 40000
  br i1 %47, label %63, label %48

48:                                               ; preds = %43, %38, %33
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1024
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 768
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 65000
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %43, %28
  %64 = load i32, i32* @MODE_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %58, %53, %48
  %66 = load i32, i32* @MODE_ONE_SIZE, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
