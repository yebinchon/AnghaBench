; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@gic_lock = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@GIC_POL_FALLING_EDGE = common dso_local global i32 0, align 4
@GIC_TRIG_EDGE = common dso_local global i32 0, align 4
@GIC_DUAL_SINGLE = common dso_local global i32 0, align 4
@GIC_POL_RISING_EDGE = common dso_local global i32 0, align 4
@GIC_DUAL_DUAL = common dso_local global i32 0, align 4
@GIC_POL_ACTIVE_LOW = common dso_local global i32 0, align 4
@GIC_TRIG_LEVEL = common dso_local global i32 0, align 4
@GIC_POL_ACTIVE_HIGH = common dso_local global i32 0, align 4
@gic_edge_irq_controller = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@gic_level_irq_controller = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @gic_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GIC_HWIRQ_TO_SHARED(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @gic_lock, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %35 [
    i32 131, label %19
    i32 130, label %23
    i32 132, label %27
    i32 128, label %30
    i32 129, label %34
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @GIC_POL_FALLING_EDGE, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @GIC_TRIG_EDGE, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @GIC_DUAL_SINGLE, align 4
  store i32 %22, i32* %8, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load i32, i32* @GIC_POL_RISING_EDGE, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @GIC_TRIG_EDGE, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @GIC_DUAL_SINGLE, align 4
  store i32 %26, i32* %8, align 4
  br label %39

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %28 = load i32, i32* @GIC_TRIG_EDGE, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @GIC_DUAL_DUAL, align 4
  store i32 %29, i32* %8, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* @GIC_POL_ACTIVE_LOW, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @GIC_TRIG_LEVEL, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @GIC_DUAL_SINGLE, align 4
  store i32 %33, i32* %8, align 4
  br label %39

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %2, %34
  %36 = load i32, i32* @GIC_POL_ACTIVE_HIGH, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @GIC_TRIG_LEVEL, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @GIC_DUAL_SINGLE, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %30, %27, %23, %19
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @change_gic_pol(i32 %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @change_gic_trig(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @change_gic_dual(i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @GIC_TRIG_EDGE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %54 = load i32, i32* @handle_edge_irq, align 4
  %55 = call i32 @irq_set_chip_handler_name_locked(%struct.irq_data* %53, i32* @gic_edge_irq_controller, i32 %54, i32* null)
  br label %60

56:                                               ; preds = %39
  %57 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %58 = load i32, i32* @handle_level_irq, align 4
  %59 = call i32 @irq_set_chip_handler_name_locked(%struct.irq_data* %57, i32* @gic_level_irq_controller, i32 %58, i32* null)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* @gic_lock, i64 %61)
  ret i32 0
}

declare dso_local i32 @GIC_HWIRQ_TO_SHARED(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @change_gic_pol(i32, i32) #1

declare dso_local i32 @change_gic_trig(i32, i32) #1

declare dso_local i32 @change_gic_dual(i32, i32) #1

declare dso_local i32 @irq_set_chip_handler_name_locked(%struct.irq_data*, i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
