; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-cpu.c_mips_cpu_intc_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-cpu.c_mips_cpu_intc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32 }
%struct.irq_domain = type { i32 }

@cpu_has_mipsmt = common dso_local global i64 0, align 8
@mips_mt_cpu_irq_controller = common dso_local global %struct.irq_chip zeroinitializer, align 4
@mips_cpu_irq_controller = common dso_local global %struct.irq_chip zeroinitializer, align 4
@cpu_has_vint = common dso_local global i64 0, align 8
@plat_irq_dispatch = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @mips_cpu_intc_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_cpu_intc_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_chip*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i64, i64* @cpu_has_mipsmt, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store %struct.irq_chip* @mips_mt_cpu_irq_controller, %struct.irq_chip** %7, align 8
  br label %15

14:                                               ; preds = %10, %3
  store %struct.irq_chip* @mips_cpu_irq_controller, %struct.irq_chip** %7, align 8
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i64, i64* @cpu_has_vint, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @plat_irq_dispatch, align 4
  %21 = call i32 @set_vi_handler(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %25 = load i32, i32* @handle_percpu_irq, align 4
  %26 = call i32 @irq_set_chip_and_handler(i32 %23, %struct.irq_chip* %24, i32 %25)
  ret i32 0
}

declare dso_local i32 @set_vi_handler(i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
