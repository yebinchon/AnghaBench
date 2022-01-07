; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_get_current_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_get_current_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i64 }

@TC_PORT_TBT_ALT = common dso_local global i32 0, align 4
@TC_PORT_LEGACY = common dso_local global i32 0, align 4
@TC_PORT_DP_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*)* @intel_tc_port_get_current_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tc_port_get_current_mode(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %8 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %9 = call i64 @tc_port_live_status_mask(%struct.intel_digital_port* %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %11 = call i32 @icl_tc_phy_is_in_safe_mode(%struct.intel_digital_port* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %16 = call i32 @icl_tc_phy_status_complete(%struct.intel_digital_port* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14, %1
  %23 = load i32, i32* @TC_PORT_TBT_ALT, align 4
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %14
  %25 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %26 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @TC_PORT_LEGACY, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @TC_PORT_DP_ALT, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %6, align 4
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @fls(i64 %38)
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @TC_PORT_TBT_ALT, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %37
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @tc_port_live_status_mask(%struct.intel_digital_port*) #1

declare dso_local i32 @icl_tc_phy_is_in_safe_mode(%struct.intel_digital_port*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @icl_tc_phy_status_complete(%struct.intel_digital_port*) #1

declare dso_local i32 @fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
