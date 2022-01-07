; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_tc_port_fixup_legacy_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_tc_port_fixup_legacy_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, i32 }

@TC_PORT_LEGACY = common dso_local global i32 0, align 4
@TC_PORT_DP_ALT = common dso_local global i32 0, align 4
@TC_PORT_TBT_ALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Port %s: live status %08x mismatches the legacy port flag, fix flag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_digital_port*, i32)* @tc_port_fixup_legacy_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_port_fixup_legacy_flag(%struct.intel_digital_port* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %7 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @TC_PORT_LEGACY, align 4
  %12 = call i32 @BIT(i32 %11)
  store i32 %12, i32* %5, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @TC_PORT_DP_ALT, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = load i32, i32* @TC_PORT_TBT_ALT, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = or i32 %15, %17
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %13, %10
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %40

26:                                               ; preds = %19
  %27 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %28 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %33 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %39 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
