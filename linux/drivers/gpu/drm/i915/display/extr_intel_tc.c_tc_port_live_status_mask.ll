; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_tc_port_live_status_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_tc_port_live_status_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Port %s: PHY in TCCOLD, nothing connected\0A\00", align 1
@TC_PORT_TBT_ALT = common dso_local global i32 0, align 4
@TC_PORT_DP_ALT = common dso_local global i32 0, align 4
@SDEISR = common dso_local global i32 0, align 4
@TC_PORT_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*)* @tc_port_live_status_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_port_live_status_mask(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uncore*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %9 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %10 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @intel_port_to_tc(%struct.drm_i915_private* %15, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  store %struct.intel_uncore* %22, %struct.intel_uncore** %6, align 8
  store i32 0, i32* %7, align 4
  %23 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %25 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PORT_TX_DFLEXDPSP(i32 %26)
  %28 = call i32 @intel_uncore_read(%struct.intel_uncore* %23, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %33 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %85

37:                                               ; preds = %1
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @TC_LIVE_STATE_TBT(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* @TC_PORT_TBT_ALT, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %43, %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @TC_LIVE_STATE_TC(i32 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* @TC_PORT_DP_ALT, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %61 = load i32, i32* @SDEISR, align 4
  %62 = call i32 @intel_uncore_read(%struct.intel_uncore* %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @SDE_TC_HOTPLUG_ICP(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* @TC_PORT_LEGACY, align 4
  %69 = call i32 @BIT(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %67, %59
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @hweight32(i32 %73)
  %75 = icmp sgt i32 %74, 1
  %76 = zext i1 %75 to i32
  %77 = call i32 @WARN_ON(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @tc_port_fixup_legacy_flag(%struct.intel_digital_port* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %31
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @PORT_TX_DFLEXDPSP(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @TC_LIVE_STATE_TBT(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @TC_LIVE_STATE_TC(i32) #1

declare dso_local i32 @SDE_TC_HOTPLUG_ICP(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @tc_port_fixup_legacy_flag(%struct.intel_digital_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
