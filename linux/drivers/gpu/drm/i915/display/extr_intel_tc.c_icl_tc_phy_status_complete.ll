; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_icl_tc_phy_status_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_icl_tc_phy_status_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Port %s: PHY in TCCOLD, assuming not complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*)* @icl_tc_phy_status_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_tc_phy_status_complete(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uncore*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %8 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %9 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %4, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %16 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @intel_port_to_tc(%struct.drm_i915_private* %14, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  store %struct.intel_uncore* %21, %struct.intel_uncore** %6, align 8
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %24 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PORT_TX_DFLEXDPPMS(i32 %25)
  %27 = call i32 @intel_uncore_read(%struct.intel_uncore* %22, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %32 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %40

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @DP_PHY_MODE_STATUS_COMPLETED(i32 %37)
  %39 = and i32 %36, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @PORT_TX_DFLEXDPPMS(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @DP_PHY_MODE_STATUS_COMPLETED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
