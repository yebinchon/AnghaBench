; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-msic.c_msic_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-msic.c_msic_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.msic_gpio = type { i32, i32, i64 }

@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@MSIC_GPIO_TRIG_RISE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@MSIC_GPIO_TRIG_FALL = common dso_local global i32 0, align 4
@MSIC_GPIO_INTCNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @msic_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msic_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.msic_gpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.msic_gpio* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.msic_gpio* %8, %struct.msic_gpio** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.msic_gpio*, %struct.msic_gpio** %3, align 8
  %10 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %1
  %14 = load %struct.msic_gpio*, %struct.msic_gpio** %3, align 8
  %15 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @__ffs(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @msic_gpio_to_ireg(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %53

23:                                               ; preds = %13
  %24 = load %struct.msic_gpio*, %struct.msic_gpio** %3, align 8
  %25 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @MSIC_GPIO_TRIG_RISE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.msic_gpio*, %struct.msic_gpio** %3, align 8
  %36 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @MSIC_GPIO_TRIG_FALL, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MSIC_GPIO_INTCNT_MASK, align 4
  %49 = call i32 @intel_msic_reg_update(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.msic_gpio*, %struct.msic_gpio** %3, align 8
  %51 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %1
  br label %53

53:                                               ; preds = %52, %22
  %54 = load %struct.msic_gpio*, %struct.msic_gpio** %3, align 8
  %55 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  ret void
}

declare dso_local %struct.msic_gpio* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @msic_gpio_to_ireg(i32) #1

declare dso_local i32 @intel_msic_reg_update(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
