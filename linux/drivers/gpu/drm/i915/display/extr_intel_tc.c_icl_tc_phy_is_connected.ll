; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_icl_tc_phy_is_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_icl_tc_phy_is_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Port %s: PHY status not complete\0A\00", align 1
@TC_PORT_TBT_ALT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Port %s: PHY still in safe mode\0A\00", align 1
@TC_PORT_DP_ALT = common dso_local global i64 0, align 8
@TC_PORT_LEGACY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*)* @icl_tc_phy_is_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_tc_phy_is_connected(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %4 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %5 = call i32 @icl_tc_phy_status_complete(%struct.intel_digital_port* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %9 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %13 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TC_PORT_TBT_ALT, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %20 = call i64 @icl_tc_phy_is_in_safe_mode(%struct.intel_digital_port* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %24 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 0, i32* %2, align 4
  br label %42

27:                                               ; preds = %18
  %28 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %29 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TC_PORT_DP_ALT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %35 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TC_PORT_LEGACY, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i1 [ true, %27 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %22, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @icl_tc_phy_status_complete(%struct.intel_digital_port*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i64 @icl_tc_phy_is_in_safe_mode(%struct.intel_digital_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
