; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_up_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_up_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@IS_FIRST_SOURCE = common dso_local global i32 0, align 4
@IS_LAST_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @set_up_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_up_interrupts(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %6 = load i32, i32* @IS_FIRST_SOURCE, align 4
  %7 = load i32, i32* @IS_LAST_SOURCE, align 4
  %8 = call i32 @set_intr_bits(%struct.hfi1_devdata* %5, i32 %6, i32 %7, i32 0)
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = call i32 @clear_all_interrupts(%struct.hfi1_devdata* %9)
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %12 = call i32 @reset_interrupts(%struct.hfi1_devdata* %11)
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = call i32 @msix_initialize(%struct.hfi1_devdata* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = call i32 @msix_request_irqs(%struct.hfi1_devdata* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %26 = call i32 @msix_clean_up_interrupts(%struct.hfi1_devdata* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @set_intr_bits(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @clear_all_interrupts(%struct.hfi1_devdata*) #1

declare dso_local i32 @reset_interrupts(%struct.hfi1_devdata*) #1

declare dso_local i32 @msix_initialize(%struct.hfi1_devdata*) #1

declare dso_local i32 @msix_request_irqs(%struct.hfi1_devdata*) #1

declare dso_local i32 @msix_clean_up_interrupts(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
