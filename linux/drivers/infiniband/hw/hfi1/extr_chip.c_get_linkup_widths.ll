; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_get_linkup_widths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_get_linkup_widths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32*, i32*)* @get_linkup_widths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_linkup_widths(%struct.hfi1_devdata* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %15 = call i32 @read_vc_local_link_mode(%struct.hfi1_devdata* %14, i32* %10, i32* %11, i32* %7)
  %16 = load i32, i32* %7, align 4
  %17 = ashr i32 %16, 12
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 15
  store i32 %20, i32* %9, align 4
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @link_width_to_bits(%struct.hfi1_devdata* %21, i32 %22)
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @link_width_to_bits(%struct.hfi1_devdata* %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %30 = call i32 @get_link_widths(%struct.hfi1_devdata* %29, i32* %12, i32* %13)
  ret void
}

declare dso_local i32 @read_vc_local_link_mode(%struct.hfi1_devdata*, i32*, i32*, i32*) #1

declare dso_local i32 @link_width_to_bits(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @get_link_widths(%struct.hfi1_devdata*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
