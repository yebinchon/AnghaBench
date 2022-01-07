; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_vc_local_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_vc_local_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@MISC_CONFIG_BITS_SHIFT = common dso_local global i32 0, align 4
@LOCAL_FLAG_BITS_SHIFT = common dso_local global i32 0, align 4
@LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@VERIFY_CAP_LOCAL_LINK_MODE = common dso_local global i32 0, align 4
@GENERAL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i64, i64, i64)* @write_vc_local_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vc_local_link_mode(%struct.hfi1_devdata* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @MISC_CONFIG_BITS_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @LOCAL_FLAG_BITS_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %13, %17
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @LINK_WIDTH_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %18, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %25 = load i32, i32* @VERIFY_CAP_LOCAL_LINK_MODE, align 4
  %26 = load i32, i32* @GENERAL_CONFIG, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @load_8051_config(%struct.hfi1_devdata* %24, i32 %25, i32 %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @load_8051_config(%struct.hfi1_devdata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
