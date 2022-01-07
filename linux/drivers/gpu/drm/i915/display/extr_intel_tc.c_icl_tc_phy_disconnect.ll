; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_icl_tc_phy_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_icl_tc_phy_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_digital_port*)* @icl_tc_phy_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_tc_phy_disconnect(%struct.intel_digital_port* %0) #0 {
  %2 = alloca %struct.intel_digital_port*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %2, align 8
  %3 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %4 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %13 [
    i32 129, label %6
    i32 130, label %7
    i32 128, label %12
  ]

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %9 = call i32 @icl_tc_phy_set_safe_mode(%struct.intel_digital_port* %8, i32 1)
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %11 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %10, i32 0, i32 0
  store i32 128, i32* %11, align 4
  br label %18

12:                                               ; preds = %1
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %15 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MISSING_CASE(i32 %16)
  br label %18

18:                                               ; preds = %13, %12, %7, %6
  ret void
}

declare dso_local i32 @icl_tc_phy_set_safe_mode(%struct.intel_digital_port*, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
