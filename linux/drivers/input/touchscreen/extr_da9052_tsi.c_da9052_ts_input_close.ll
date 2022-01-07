; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9052_tsi.c_da9052_ts_input_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9052_tsi.c_da9052_ts_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.da9052_tsi = type { i32, i32, i64, i32 }

@DA9052_IRQ_PENDOWN = common dso_local global i32 0, align 4
@DA9052_IRQ_TSIREADY = common dso_local global i32 0, align 4
@DA9052_TSI_CONT_A_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @da9052_ts_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9052_ts_input_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.da9052_tsi*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.da9052_tsi* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.da9052_tsi* %5, %struct.da9052_tsi** %3, align 8
  %6 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %7 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = call i32 (...) @mb()
  %9 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %10 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DA9052_IRQ_PENDOWN, align 4
  %13 = call i32 @da9052_disable_irq(i32 %11, i32 %12)
  %14 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %15 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %14, i32 0, i32 3
  %16 = call i32 @cancel_delayed_work_sync(i32* %15)
  %17 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %18 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %23 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DA9052_IRQ_TSIREADY, align 4
  %26 = call i32 @da9052_disable_irq(i32 %24, i32 %25)
  %27 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %28 = call i32 @da9052_ts_adc_toggle(%struct.da9052_tsi* %27, i32 0)
  %29 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %30 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DA9052_IRQ_PENDOWN, align 4
  %33 = call i32 @da9052_enable_irq(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %21, %1
  %35 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %36 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DA9052_TSI_CONT_A_REG, align 4
  %39 = call i32 @da9052_reg_update(i32 %37, i32 %38, i32 2, i32 0)
  ret void
}

declare dso_local %struct.da9052_tsi* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @da9052_disable_irq(i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @da9052_ts_adc_toggle(%struct.da9052_tsi*, i32) #1

declare dso_local i32 @da9052_enable_irq(i32, i32) #1

declare dso_local i32 @da9052_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
