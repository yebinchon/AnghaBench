; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.vf610_gpio_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GPIO_PDIR = common dso_local global i64 0, align 8
@GPIO_PDDR = common dso_local global i64 0, align 8
@GPIO_PDOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @vf610_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vf610_gpio_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.vf610_gpio_port* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.vf610_gpio_port* %9, %struct.vf610_gpio_port** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @BIT(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @GPIO_PDIR, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %14 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %19 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %26 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GPIO_PDDR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @vf610_gpio_readl(i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i64, i64* @GPIO_PDOR, align 8
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %35, %24
  br label %38

38:                                               ; preds = %37, %17, %2
  %39 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %40 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %41, %42
  %44 = call i64 @vf610_gpio_readl(i64 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @BIT(i32 %45)
  %47 = and i64 %44, %46
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local %struct.vf610_gpio_port* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @vf610_gpio_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
