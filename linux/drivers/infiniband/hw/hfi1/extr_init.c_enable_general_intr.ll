; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_enable_general_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_enable_general_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@CCE_ERR_INT = common dso_local global i32 0, align 4
@MISC_ERR_INT = common dso_local global i32 0, align 4
@PIO_ERR_INT = common dso_local global i32 0, align 4
@TXE_ERR_INT = common dso_local global i32 0, align 4
@IS_SENDCTXT_ERR_START = common dso_local global i32 0, align 4
@IS_SENDCTXT_ERR_END = common dso_local global i32 0, align 4
@PBC_INT = common dso_local global i32 0, align 4
@GPIO_ASSERT_INT = common dso_local global i32 0, align 4
@TCRIT_INT = common dso_local global i32 0, align 4
@IS_DC_START = common dso_local global i32 0, align 4
@IS_DC_END = common dso_local global i32 0, align 4
@IS_SENDCREDIT_START = common dso_local global i32 0, align 4
@IS_SENDCREDIT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @enable_general_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_general_intr(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %3 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %4 = load i32, i32* @CCE_ERR_INT, align 4
  %5 = load i32, i32* @MISC_ERR_INT, align 4
  %6 = call i32 @set_intr_bits(%struct.hfi1_devdata* %3, i32 %4, i32 %5, i32 1)
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %8 = load i32, i32* @PIO_ERR_INT, align 4
  %9 = load i32, i32* @TXE_ERR_INT, align 4
  %10 = call i32 @set_intr_bits(%struct.hfi1_devdata* %7, i32 %8, i32 %9, i32 1)
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = load i32, i32* @IS_SENDCTXT_ERR_START, align 4
  %13 = load i32, i32* @IS_SENDCTXT_ERR_END, align 4
  %14 = call i32 @set_intr_bits(%struct.hfi1_devdata* %11, i32 %12, i32 %13, i32 1)
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %16 = load i32, i32* @PBC_INT, align 4
  %17 = load i32, i32* @GPIO_ASSERT_INT, align 4
  %18 = call i32 @set_intr_bits(%struct.hfi1_devdata* %15, i32 %16, i32 %17, i32 1)
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %20 = load i32, i32* @TCRIT_INT, align 4
  %21 = load i32, i32* @TCRIT_INT, align 4
  %22 = call i32 @set_intr_bits(%struct.hfi1_devdata* %19, i32 %20, i32 %21, i32 1)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %24 = load i32, i32* @IS_DC_START, align 4
  %25 = load i32, i32* @IS_DC_END, align 4
  %26 = call i32 @set_intr_bits(%struct.hfi1_devdata* %23, i32 %24, i32 %25, i32 1)
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %28 = load i32, i32* @IS_SENDCREDIT_START, align 4
  %29 = load i32, i32* @IS_SENDCREDIT_END, align 4
  %30 = call i32 @set_intr_bits(%struct.hfi1_devdata* %27, i32 %28, i32 %29, i32 1)
  ret void
}

declare dso_local i32 @set_intr_bits(%struct.hfi1_devdata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
