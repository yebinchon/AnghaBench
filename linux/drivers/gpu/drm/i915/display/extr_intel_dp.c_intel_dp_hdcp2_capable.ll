; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DP_HDCP_2_2_REG_RX_CAPS_OFFSET = common dso_local global i32 0, align 4
@HDCP_2_2_RXCAPS_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HDCP_2_2_RX_CAPS_VERSION_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32*)* @intel_dp_hdcp2_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hdcp2_capable(%struct.intel_digital_port* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %10 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @DP_HDCP_2_2_REG_RX_CAPS_OFFSET, align 4
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %14 = load i32, i32* @HDCP_2_2_RXCAPS_LEN, align 4
  %15 = call i32 @drm_dp_dpcd_read(i32* %11, i32 %12, i64* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @HDCP_2_2_RXCAPS_LEN, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %24, %22 ], [ %26, %25 ]
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %2
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %31 = load i64, i64* %30, align 16
  %32 = load i64, i64* @HDCP_2_2_RX_CAPS_VERSION_VAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %36 = load i64, i64* %35, align 16
  %37 = call i64 @HDCP_2_2_DP_HDCP_CAPABLE(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %34, %29
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %27
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i64*, i32) #1

declare dso_local i64 @HDCP_2_2_DP_HDCP_CAPABLE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
