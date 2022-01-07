; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-versatile-fpga.c_fpga_irq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-versatile-fpga.c_fpga_irq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.fpga_irq_data = type { i32, i64 }

@IRQ_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @fpga_irq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpga_irq_handle(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.fpga_irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.fpga_irq_data* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.fpga_irq_data* %7, %struct.fpga_irq_data** %3, align 8
  %8 = load %struct.fpga_irq_data*, %struct.fpga_irq_data** %3, align 8
  %9 = getelementptr inbounds %struct.fpga_irq_data, %struct.fpga_irq_data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IRQ_STATUS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %18 = call i32 @do_bad_IRQ(%struct.irq_desc* %17)
  br label %38

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ffs(i32 %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.fpga_irq_data*, %struct.fpga_irq_data** %3, align 8
  %30 = getelementptr inbounds %struct.fpga_irq_data, %struct.fpga_irq_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @irq_find_mapping(i32 %31, i32 %32)
  %34 = call i32 @generic_handle_irq(i32 %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %20, label %38

38:                                               ; preds = %16, %35
  ret void
}

declare dso_local %struct.fpga_irq_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @do_bad_IRQ(%struct.irq_desc*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
