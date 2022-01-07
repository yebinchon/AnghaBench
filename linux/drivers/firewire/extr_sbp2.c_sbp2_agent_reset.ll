; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_agent_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_agent_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_logical_unit = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_device = type { i32, i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@SBP2_AGENT_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_logical_unit*)* @sbp2_agent_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2_agent_reset(%struct.sbp2_logical_unit* %0) #0 {
  %2 = alloca %struct.sbp2_logical_unit*, align 8
  %3 = alloca %struct.fw_device*, align 8
  %4 = alloca i32, align 4
  store %struct.sbp2_logical_unit* %0, %struct.sbp2_logical_unit** %2, align 8
  %5 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %6 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call %struct.fw_device* @target_parent_device(%struct.TYPE_2__* %7)
  store %struct.fw_device* %8, %struct.fw_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %10 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %13 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %14 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %19 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %22 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %25 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SBP2_AGENT_RESET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @fw_run_transaction(i32 %11, i32 %12, i32 %17, i32 %20, i32 %23, i64 %28, i32* %4, i32 4)
  ret void
}

declare dso_local %struct.fw_device* @target_parent_device(%struct.TYPE_2__*) #1

declare dso_local i32 @fw_run_transaction(i32, i32, i32, i32, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
