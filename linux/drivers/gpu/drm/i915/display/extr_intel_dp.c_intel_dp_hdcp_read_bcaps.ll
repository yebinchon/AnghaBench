; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp_read_bcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp_read_bcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DP_AUX_HDCP_BCAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Read bcaps from DP/AUX failed (%zd)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32*)* @intel_dp_hdcp_read_bcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hdcp_read_bcaps(%struct.intel_digital_port* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %8 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* @DP_AUX_HDCP_BCAPS, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @drm_dp_dpcd_read(i32* %9, i32 %10, i32* %11, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %22, %20 ], [ %24, %23 ]
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
