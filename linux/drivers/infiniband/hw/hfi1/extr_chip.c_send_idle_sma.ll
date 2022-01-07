; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_send_idle_sma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_send_idle_sma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@IDLE_PAYLOAD_MASK = common dso_local global i32 0, align 4
@IDLE_PAYLOAD_SHIFT = common dso_local global i32 0, align 4
@IDLE_SMA = common dso_local global i64 0, align 8
@IDLE_MSG_TYPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_idle_sma(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IDLE_PAYLOAD_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @IDLE_PAYLOAD_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = load i64, i64* @IDLE_SMA, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @IDLE_MSG_TYPE_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %10, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @send_idle_message(%struct.hfi1_devdata* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @send_idle_message(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
