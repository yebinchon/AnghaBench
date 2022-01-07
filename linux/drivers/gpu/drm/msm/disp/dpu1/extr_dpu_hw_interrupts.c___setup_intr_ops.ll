; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c___setup_intr_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c___setup_intr_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_intr_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dpu_hw_intr_irqidx_lookup = common dso_local global i32 0, align 4
@dpu_hw_intr_enable_irq = common dso_local global i32 0, align 4
@dpu_hw_intr_disable_irq = common dso_local global i32 0, align 4
@dpu_hw_intr_dispatch_irq = common dso_local global i32 0, align 4
@dpu_hw_intr_clear_irqs = common dso_local global i32 0, align 4
@dpu_hw_intr_disable_irqs = common dso_local global i32 0, align 4
@dpu_hw_intr_get_interrupt_statuses = common dso_local global i32 0, align 4
@dpu_hw_intr_clear_intr_status_nolock = common dso_local global i32 0, align 4
@dpu_hw_intr_get_interrupt_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_intr_ops*)* @__setup_intr_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_intr_ops(%struct.dpu_hw_intr_ops* %0) #0 {
  %2 = alloca %struct.dpu_hw_intr_ops*, align 8
  store %struct.dpu_hw_intr_ops* %0, %struct.dpu_hw_intr_ops** %2, align 8
  %3 = load i32, i32* @dpu_hw_intr_irqidx_lookup, align 4
  %4 = load %struct.dpu_hw_intr_ops*, %struct.dpu_hw_intr_ops** %2, align 8
  %5 = getelementptr inbounds %struct.dpu_hw_intr_ops, %struct.dpu_hw_intr_ops* %4, i32 0, i32 8
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @dpu_hw_intr_enable_irq, align 4
  %7 = load %struct.dpu_hw_intr_ops*, %struct.dpu_hw_intr_ops** %2, align 8
  %8 = getelementptr inbounds %struct.dpu_hw_intr_ops, %struct.dpu_hw_intr_ops* %7, i32 0, i32 7
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @dpu_hw_intr_disable_irq, align 4
  %10 = load %struct.dpu_hw_intr_ops*, %struct.dpu_hw_intr_ops** %2, align 8
  %11 = getelementptr inbounds %struct.dpu_hw_intr_ops, %struct.dpu_hw_intr_ops* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @dpu_hw_intr_dispatch_irq, align 4
  %13 = load %struct.dpu_hw_intr_ops*, %struct.dpu_hw_intr_ops** %2, align 8
  %14 = getelementptr inbounds %struct.dpu_hw_intr_ops, %struct.dpu_hw_intr_ops* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @dpu_hw_intr_clear_irqs, align 4
  %16 = load %struct.dpu_hw_intr_ops*, %struct.dpu_hw_intr_ops** %2, align 8
  %17 = getelementptr inbounds %struct.dpu_hw_intr_ops, %struct.dpu_hw_intr_ops* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @dpu_hw_intr_disable_irqs, align 4
  %19 = load %struct.dpu_hw_intr_ops*, %struct.dpu_hw_intr_ops** %2, align 8
  %20 = getelementptr inbounds %struct.dpu_hw_intr_ops, %struct.dpu_hw_intr_ops* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @dpu_hw_intr_get_interrupt_statuses, align 4
  %22 = load %struct.dpu_hw_intr_ops*, %struct.dpu_hw_intr_ops** %2, align 8
  %23 = getelementptr inbounds %struct.dpu_hw_intr_ops, %struct.dpu_hw_intr_ops* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @dpu_hw_intr_clear_intr_status_nolock, align 4
  %25 = load %struct.dpu_hw_intr_ops*, %struct.dpu_hw_intr_ops** %2, align 8
  %26 = getelementptr inbounds %struct.dpu_hw_intr_ops, %struct.dpu_hw_intr_ops* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @dpu_hw_intr_get_interrupt_status, align 4
  %28 = load %struct.dpu_hw_intr_ops*, %struct.dpu_hw_intr_ops** %2, align 8
  %29 = getelementptr inbounds %struct.dpu_hw_intr_ops, %struct.dpu_hw_intr_ops* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
