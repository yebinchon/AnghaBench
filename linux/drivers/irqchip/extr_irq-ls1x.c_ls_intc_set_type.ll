; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls1x.c_ls_intc_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls1x.c_ls_intc_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32 }

@LS_REG_INTC_EDGE = common dso_local global i32 0, align 4
@LS_REG_INTC_POL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @ls_intc_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_intc_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.irq_chip_generic* %9, %struct.irq_chip_generic** %6, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %50 [
    i32 129, label %14
    i32 128, label %23
    i32 130, label %32
    i32 131, label %41
  ]

14:                                               ; preds = %2
  %15 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %16 = load i32, i32* @LS_REG_INTC_EDGE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ls_intc_set_bit(%struct.irq_chip_generic* %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %20 = load i32, i32* @LS_REG_INTC_POL, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ls_intc_set_bit(%struct.irq_chip_generic* %19, i32 %20, i32 %21, i32 1)
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %25 = load i32, i32* @LS_REG_INTC_EDGE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ls_intc_set_bit(%struct.irq_chip_generic* %24, i32 %25, i32 %26, i32 0)
  %28 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %29 = load i32, i32* @LS_REG_INTC_POL, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ls_intc_set_bit(%struct.irq_chip_generic* %28, i32 %29, i32 %30, i32 0)
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %34 = load i32, i32* @LS_REG_INTC_EDGE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ls_intc_set_bit(%struct.irq_chip_generic* %33, i32 %34, i32 %35, i32 1)
  %37 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %38 = load i32, i32* @LS_REG_INTC_POL, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ls_intc_set_bit(%struct.irq_chip_generic* %37, i32 %38, i32 %39, i32 1)
  br label %53

41:                                               ; preds = %2
  %42 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %43 = load i32, i32* @LS_REG_INTC_EDGE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ls_intc_set_bit(%struct.irq_chip_generic* %42, i32 %43, i32 %44, i32 1)
  %46 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %47 = load i32, i32* @LS_REG_INTC_POL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ls_intc_set_bit(%struct.irq_chip_generic* %46, i32 %47, i32 %48, i32 0)
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %41, %32, %23, %14
  %54 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @irqd_set_trigger_type(%struct.irq_data* %54, i32 %55)
  %57 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @irq_setup_alt_chip(%struct.irq_data* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %50
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @ls_intc_set_bit(%struct.irq_chip_generic*, i32, i32, i32) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

declare dso_local i32 @irq_setup_alt_chip(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
