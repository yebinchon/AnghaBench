; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp_read_v_prime_part.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp_read_v_prime_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRM_HDCP_V_PRIME_NUM_PARTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_HDCP_V_PRIME_PART_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Read v'[%d] from DP/AUX failed (%zd)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32, i32*)* @intel_dp_hdcp_read_v_prime_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hdcp_read_v_prime_part(%struct.intel_digital_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @DRM_HDCP_V_PRIME_NUM_PARTS, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DP_AUX_HDCP_V_PRIME(i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @DRM_HDCP_V_PRIME_PART_LEN, align 4
  %23 = call i32 @drm_dp_dpcd_read(i32* %18, i32 %20, i32* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @DRM_HDCP_V_PRIME_PART_LEN, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ]
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %38, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32*, i32) #1

declare dso_local i32 @DP_AUX_HDCP_V_PRIME(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
