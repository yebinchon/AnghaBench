; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c_max7301_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c_max7301_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max7301 = type { i32*, i32, i32 (i32, i32)*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIN_CONFIG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @max7301_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max7301_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max7301*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.max7301* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.max7301* %9, %struct.max7301** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.max7301*, %struct.max7301** %5, align 8
  %15 = getelementptr inbounds %struct.max7301, %struct.max7301* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.max7301*, %struct.max7301** %5, align 8
  %18 = getelementptr inbounds %struct.max7301, %struct.max7301* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = lshr i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 3
  %27 = shl i32 %26, 1
  %28 = lshr i32 %24, %27
  %29 = load i32, i32* @PIN_CONFIG_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %54 [
    i32 128, label %32
    i32 129, label %43
    i32 130, label %43
  ]

32:                                               ; preds = %2
  %33 = load %struct.max7301*, %struct.max7301** %5, align 8
  %34 = getelementptr inbounds %struct.max7301, %struct.max7301* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %54

43:                                               ; preds = %2, %2
  %44 = load %struct.max7301*, %struct.max7301** %5, align 8
  %45 = getelementptr inbounds %struct.max7301, %struct.max7301* %44, i32 0, i32 2
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load %struct.max7301*, %struct.max7301** %5, align 8
  %48 = getelementptr inbounds %struct.max7301, %struct.max7301* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = add i32 32, %50
  %52 = call i32 %46(i32 %49, i32 %51)
  %53 = and i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %43, %2, %32
  %55 = load %struct.max7301*, %struct.max7301** %5, align 8
  %56 = getelementptr inbounds %struct.max7301, %struct.max7301* %55, i32 0, i32 3
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.max7301* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
