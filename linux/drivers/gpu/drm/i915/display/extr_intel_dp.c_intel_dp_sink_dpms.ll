; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_sink_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_sink_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32 }
%struct.intel_lspcon = type { i64 }

@DP_DPCD_REV = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DP_SET_POWER = common dso_local global i32 0, align 4
@DP_SET_POWER_D3 = common dso_local global i32 0, align 4
@DP_SET_POWER_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to %s sink power state\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_sink_dpms(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_lspcon*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %9 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @DP_DPCD_REV, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 17
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %73

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %22 = call i64 @downstream_hpd_needs_d0(%struct.intel_dp* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %73

25:                                               ; preds = %20
  %26 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %27 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %26, i32 0, i32 1
  %28 = load i32, i32* @DP_SET_POWER, align 4
  %29 = load i32, i32* @DP_SET_POWER_D3, align 4
  %30 = call i32 @drm_dp_dpcd_writeb(i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %63

31:                                               ; preds = %16
  %32 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %33 = call %struct.intel_lspcon* @dp_to_lspcon(%struct.intel_dp* %32)
  store %struct.intel_lspcon* %33, %struct.intel_lspcon** %7, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %48, %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %39 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %38, i32 0, i32 1
  %40 = load i32, i32* @DP_SET_POWER, align 4
  %41 = load i32, i32* @DP_SET_POWER_D0, align 4
  %42 = call i32 @drm_dp_dpcd_writeb(i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %51

46:                                               ; preds = %37
  %47 = call i32 @msleep(i32 1)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %34

51:                                               ; preds = %45, %34
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.intel_lspcon*, %struct.intel_lspcon** %7, align 8
  %56 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.intel_lspcon*, %struct.intel_lspcon** %7, align 8
  %61 = call i32 @lspcon_wait_pcon_mode(%struct.intel_lspcon* %60)
  br label %62

62:                                               ; preds = %59, %54, %51
  br label %63

63:                                               ; preds = %62, %25
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %72 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %15, %24, %66, %63
  ret void
}

declare dso_local i64 @downstream_hpd_needs_d0(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local %struct.intel_lspcon* @dp_to_lspcon(%struct.intel_dp*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lspcon_wait_pcon_mode(%struct.intel_lspcon*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
