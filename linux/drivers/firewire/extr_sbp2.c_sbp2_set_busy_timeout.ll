; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_set_busy_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_set_busy_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_logical_unit = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_device = type { i32, i32 }

@SBP2_CYCLE_LIMIT = common dso_local global i32 0, align 4
@SBP2_RETRY_LIMIT = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_BUSY_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_logical_unit*)* @sbp2_set_busy_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2_set_busy_timeout(%struct.sbp2_logical_unit* %0) #0 {
  %2 = alloca %struct.sbp2_logical_unit*, align 8
  %3 = alloca %struct.fw_device*, align 8
  %4 = alloca i32, align 4
  store %struct.sbp2_logical_unit* %0, %struct.sbp2_logical_unit** %2, align 8
  %5 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %6 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call %struct.fw_device* @target_parent_device(%struct.TYPE_2__* %7)
  store %struct.fw_device* %8, %struct.fw_device** %3, align 8
  %9 = load i32, i32* @SBP2_CYCLE_LIMIT, align 4
  %10 = load i32, i32* @SBP2_RETRY_LIMIT, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @cpu_to_be32(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %14 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %17 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %18 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %23 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %26 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %29 = load i64, i64* @CSR_BUSY_TIMEOUT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @fw_run_transaction(i32 %15, i32 %16, i32 %21, i32 %24, i32 %27, i64 %30, i32* %4, i32 4)
  ret void
}

declare dso_local %struct.fw_device* @target_parent_device(%struct.TYPE_2__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fw_run_transaction(i32, i32, i32, i32, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
