; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mpc8xxx.c_mpc8xxx_gpio_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mpc8xxx.c_mpc8xxx_gpio_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.mpc8xxx_gpio_chip = type { i32, i64, %struct.gpio_chip }
%struct.gpio_chip = type { i32 (i64)* }
%struct.irq_chip = type { i32 (i32*)* }

@GPIO_IER = common dso_local global i64 0, align 8
@GPIO_IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @mpc8xxx_gpio_irq_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc8xxx_gpio_irq_cascade(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.mpc8xxx_gpio_chip*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.mpc8xxx_gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc* %7)
  store %struct.mpc8xxx_gpio_chip* %8, %struct.mpc8xxx_gpio_chip** %3, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %4, align 8
  %11 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %3, align 8
  %12 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %11, i32 0, i32 2
  store %struct.gpio_chip* %12, %struct.gpio_chip** %5, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 0
  %15 = load i32 (i64)*, i32 (i64)** %14, align 8
  %16 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %3, align 8
  %17 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GPIO_IER, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 %15(i64 %20)
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 0
  %24 = load i32 (i64)*, i32 (i64)** %23, align 8
  %25 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %3, align 8
  %26 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GPIO_IMR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 %24(i64 %29)
  %31 = and i32 %21, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %3, align 8
  %36 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @ffs(i32 %38)
  %40 = sub nsw i64 32, %39
  %41 = call i32 @irq_linear_revmap(i32 %37, i64 %40)
  %42 = call i32 @generic_handle_irq(i32 %41)
  br label %43

43:                                               ; preds = %34, %1
  %44 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %45 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %44, i32 0, i32 0
  %46 = load i32 (i32*)*, i32 (i32*)** %45, align 8
  %47 = icmp ne i32 (i32*)* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %50 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %49, i32 0, i32 0
  %51 = load i32 (i32*)*, i32 (i32*)** %50, align 8
  %52 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %52, i32 0, i32 0
  %54 = call i32 %51(i32* %53)
  br label %55

55:                                               ; preds = %48, %43
  ret void
}

declare dso_local %struct.mpc8xxx_gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i64) #1

declare dso_local i64 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
