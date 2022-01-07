; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_icl_tc_phy_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_icl_tc_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Port %s: PHY not ready\0A\00", align 1
@TC_PORT_LEGACY = common dso_local global i32 0, align 4
@TC_PORT_DP_ALT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Port %s: PHY sudden disconnect\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Port %s: PHY max lanes %d < required lanes %d\0A\00", align 1
@TC_PORT_TBT_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_digital_port*, i32)* @icl_tc_phy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_tc_phy_connect(%struct.intel_digital_port* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %7 = call i32 @icl_tc_phy_status_complete(%struct.intel_digital_port* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %11 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %16 = call i32 @icl_tc_phy_set_safe_mode(%struct.intel_digital_port* %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %70

25:                                               ; preds = %18, %14
  %26 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %27 = call i32 @intel_tc_port_fia_max_lane_count(%struct.intel_digital_port* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %29 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i32, i32* @TC_PORT_LEGACY, align 4
  %38 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %39 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %74

40:                                               ; preds = %25
  %41 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %42 = call i32 @tc_port_live_status_mask(%struct.intel_digital_port* %41)
  %43 = load i32, i32* @TC_PORT_DP_ALT, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %49 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %67

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %58 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  br label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @TC_PORT_DP_ALT, align 4
  %65 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %66 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %74

67:                                               ; preds = %56, %47
  %68 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %69 = call i32 @icl_tc_phy_set_safe_mode(%struct.intel_digital_port* %68, i32 1)
  br label %70

70:                                               ; preds = %67, %24, %9
  %71 = load i32, i32* @TC_PORT_TBT_ALT, align 4
  %72 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %73 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %63, %32
  ret void
}

declare dso_local i32 @icl_tc_phy_status_complete(%struct.intel_digital_port*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @icl_tc_phy_set_safe_mode(%struct.intel_digital_port*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_tc_port_fia_max_lane_count(%struct.intel_digital_port*) #1

declare dso_local i32 @tc_port_live_status_mask(%struct.intel_digital_port*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
