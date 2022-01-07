; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_adjust_compliance_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_adjust_compliance_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.link_config_limits = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Setting pipe_bpp to %d\0A\00", align 1
@DP_TEST_LINK_TRAINING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_adjust_compliance_config(%struct.intel_dp* %0, %struct.intel_crtc_state* %1, %struct.link_config_limits* %2) #0 {
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.link_config_limits*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.link_config_limits* %2, %struct.link_config_limits** %6, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %10 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %17 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 3, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.link_config_limits*, %struct.link_config_limits** %6, align 8
  %24 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.link_config_limits*, %struct.link_config_limits** %6, align 8
  %26 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 18
  %29 = zext i1 %28 to i32
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %15, %3
  %35 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DP_TEST_LINK_TRAINING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %34
  %42 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %43 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %44 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %48 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @intel_dp_link_params_valid(%struct.intel_dp* %42, i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %41
  %54 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %55 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %58 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %61 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @intel_dp_rate_index(i32 %56, i32 %59, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.link_config_limits*, %struct.link_config_limits** %6, align 8
  %70 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.link_config_limits*, %struct.link_config_limits** %6, align 8
  %72 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %71, i32 0, i32 2
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %53
  %74 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %75 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.link_config_limits*, %struct.link_config_limits** %6, align 8
  %79 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.link_config_limits*, %struct.link_config_limits** %6, align 8
  %81 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %80, i32 0, i32 5
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %41
  br label %83

83:                                               ; preds = %82, %34
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i64 @intel_dp_link_params_valid(%struct.intel_dp*, i32, i32) #1

declare dso_local i32 @intel_dp_rate_index(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
