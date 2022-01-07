; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lspcon = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i2c_adapter }

@DRM_LSPCON_MODE_PCON = common dso_local global i32 0, align 4
@DRM_LSPCON_MODE_LS = common dso_local global i32 0, align 4
@DRM_DP_DUAL_MODE_LSPCON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No LSPCON detected, found %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"LSPCON detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"LSPCON mode change to PCON failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lspcon*)* @lspcon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lspcon_probe(%struct.intel_lspcon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_lspcon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_lspcon* %0, %struct.intel_lspcon** %3, align 8
  %8 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %9 = call %struct.TYPE_4__* @lspcon_to_intel_dp(%struct.intel_lspcon* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %13 = call i64 @lspcon_wake_native_aux_ch(%struct.intel_lspcon* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @DRM_LSPCON_MODE_PCON, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @DRM_LSPCON_MODE_LS, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %37, %19
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @usleep_range(i32 500, i32 1000)
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %31 = call i32 @drm_dp_dual_mode_detect(%struct.i2c_adapter* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @DRM_DP_DUAL_MODE_LSPCON, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %40

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %21

40:                                               ; preds = %35, %21
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DRM_DP_DUAL_MODE_LSPCON, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @drm_dp_get_dual_mode_type_name(i32 %45)
  %47 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %2, align 4
  br label %69

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @lspcon_wait_mode(%struct.intel_lspcon* %50, i32 %51)
  %53 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %54 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %56 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DRM_LSPCON_MODE_PCON, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %48
  %61 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %62 = load i32, i32* @DRM_LSPCON_MODE_PCON, align 4
  %63 = call i64 @lspcon_change_mode(%struct.intel_lspcon* %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %48
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65, %44
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_4__* @lspcon_to_intel_dp(%struct.intel_lspcon*) #1

declare dso_local i64 @lspcon_wake_native_aux_ch(%struct.intel_lspcon*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @drm_dp_dual_mode_detect(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @drm_dp_get_dual_mode_type_name(i32) #1

declare dso_local i32 @lspcon_wait_mode(%struct.intel_lspcon*, i32) #1

declare dso_local i64 @lspcon_change_mode(%struct.intel_lspcon*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
