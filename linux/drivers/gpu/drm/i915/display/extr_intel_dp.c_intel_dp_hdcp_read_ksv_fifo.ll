; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp_read_ksv_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp_read_ksv_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRM_HDCP_KSV_LEN = common dso_local global i32 0, align 4
@DP_AUX_HDCP_KSV_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Read ksv[%d] from DP/AUX failed (%zd)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32, i32*)* @intel_dp_hdcp_read_ksv_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hdcp_read_ksv_fifo(%struct.intel_digital_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %54, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 @min(i32 %18, i32 3)
  %20 = load i32, i32* @DRM_HDCP_KSV_LEN, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %24 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @DP_AUX_HDCP_KSV_FIFO, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DRM_HDCP_KSV_LEN, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @drm_dp_dpcd_read(i32* %25, i32 %26, i32* %32, i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %15
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = icmp uge i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  %47 = sext i32 %46 to i64
  br label %50

48:                                               ; preds = %38
  %49 = load i64, i64* %8, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i64 [ %47, %44 ], [ %49, %48 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %15
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 3
  store i32 %56, i32* %9, align 4
  br label %11

57:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @drm_dp_dpcd_read(i32*, i32, i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
