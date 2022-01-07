; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.crystalcove_gpio = type { i32, i32 }

@CRYSTALCOVE_GPIO_NUM = common dso_local global i64 0, align 8
@CTLI_INTCNT_DIS = common dso_local global i32 0, align 4
@CTLI_INTCNT_BE = common dso_local global i32 0, align 4
@CTLI_INTCNT_PE = common dso_local global i32 0, align 4
@CTLI_INTCNT_NE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UPDATE_IRQ_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @crystalcove_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crystalcove_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crystalcove_gpio*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  %9 = call %struct.crystalcove_gpio* @gpiochip_get_data(i32 %8)
  store %struct.crystalcove_gpio* %9, %struct.crystalcove_gpio** %6, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CRYSTALCOVE_GPIO_NUM, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %34 [
    i32 128, label %18
    i32 131, label %22
    i32 129, label %26
    i32 130, label %30
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @CTLI_INTCNT_DIS, align 4
  %20 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %6, align 8
  %21 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %37

22:                                               ; preds = %16
  %23 = load i32, i32* @CTLI_INTCNT_BE, align 4
  %24 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %6, align 8
  %25 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %37

26:                                               ; preds = %16
  %27 = load i32, i32* @CTLI_INTCNT_PE, align 4
  %28 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %6, align 8
  %29 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %37

30:                                               ; preds = %16
  %31 = load i32, i32* @CTLI_INTCNT_NE, align 4
  %32 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %6, align 8
  %33 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %16
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %30, %26, %22, %18
  %38 = load i32, i32* @UPDATE_IRQ_TYPE, align 4
  %39 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %6, align 8
  %40 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %34, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.crystalcove_gpio* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
