; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_agent_reset_no_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_agent_reset_no_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_logical_unit = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_device = type { i32, i32 }
%struct.fw_transaction = type { i32 }

@sbp2_agent_reset_no_wait.d = internal global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@SBP2_AGENT_RESET = common dso_local global i64 0, align 8
@complete_agent_reset_write_no_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_logical_unit*)* @sbp2_agent_reset_no_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2_agent_reset_no_wait(%struct.sbp2_logical_unit* %0) #0 {
  %2 = alloca %struct.sbp2_logical_unit*, align 8
  %3 = alloca %struct.fw_device*, align 8
  %4 = alloca %struct.fw_transaction*, align 8
  store %struct.sbp2_logical_unit* %0, %struct.sbp2_logical_unit** %2, align 8
  %5 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %6 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call %struct.fw_device* @target_parent_device(%struct.TYPE_2__* %7)
  store %struct.fw_device* %8, %struct.fw_device** %3, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.fw_transaction* @kmalloc(i32 4, i32 %9)
  store %struct.fw_transaction* %10, %struct.fw_transaction** %4, align 8
  %11 = load %struct.fw_transaction*, %struct.fw_transaction** %4, align 8
  %12 = icmp eq %struct.fw_transaction* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %16 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fw_transaction*, %struct.fw_transaction** %4, align 8
  %19 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %20 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %21 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %26 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %29 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %2, align 8
  %32 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SBP2_AGENT_RESET, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @complete_agent_reset_write_no_wait, align 4
  %37 = load %struct.fw_transaction*, %struct.fw_transaction** %4, align 8
  %38 = call i32 @fw_send_request(i32 %17, %struct.fw_transaction* %18, i32 %19, i32 %24, i32 %27, i32 %30, i64 %35, i32* @sbp2_agent_reset_no_wait.d, i32 4, i32 %36, %struct.fw_transaction* %37)
  br label %39

39:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.fw_device* @target_parent_device(%struct.TYPE_2__*) #1

declare dso_local %struct.fw_transaction* @kmalloc(i32, i32) #1

declare dso_local i32 @fw_send_request(i32, %struct.fw_transaction*, i32, i32, i32, i32, i64, i32*, i32, i32, %struct.fw_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
