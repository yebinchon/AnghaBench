; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_check_service_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_check_service_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32, i32 }

@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_DEVICE_SERVICE_IRQ_VECTOR = common dso_local global i32 0, align 4
@DP_AUTOMATED_TEST_REQUEST = common dso_local global i32 0, align 4
@DP_CP_IRQ = common dso_local global i32 0, align 4
@DP_SINK_SPECIFIC_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Sink specific irq unhandled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_check_service_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_check_service_irq(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %4 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %5 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @DP_DPCD_REV, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 17
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %14 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %13, i32 0, i32 2
  %15 = load i32, i32* @DP_DEVICE_SERVICE_IRQ_VECTOR, align 4
  %16 = call i32 @drm_dp_dpcd_readb(i32* %14, i32 %15, i32* %3)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %12
  br label %52

22:                                               ; preds = %18
  %23 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %24 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %23, i32 0, i32 2
  %25 = load i32, i32* @DP_DEVICE_SERVICE_IRQ_VECTOR, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @drm_dp_dpcd_writeb(i32* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @DP_AUTOMATED_TEST_REQUEST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %34 = call i32 @intel_dp_handle_test_request(%struct.intel_dp* %33)
  br label %35

35:                                               ; preds = %32, %22
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @DP_CP_IRQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @intel_hdcp_handle_cp_irq(i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @DP_SINK_SPECIFIC_IRQ, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %11, %21, %50, %45
  ret void
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @intel_dp_handle_test_request(%struct.intel_dp*) #1

declare dso_local i32 @intel_hdcp_handle_cp_irq(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
