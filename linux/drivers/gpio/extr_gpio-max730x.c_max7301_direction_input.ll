; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c_max7301_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c_max7301_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max7301 = type { i32*, i32, i32 (i32, i32, i32)*, i32, i32 }

@PIN_CONFIG_IN_PULLUP = common dso_local global i32 0, align 4
@PIN_CONFIG_IN_WO_PULLUP = common dso_local global i32 0, align 4
@PIN_CONFIG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @max7301_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max7301_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max7301*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = call %struct.max7301* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.max7301* %11, %struct.max7301** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 3
  %16 = shl i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load %struct.max7301*, %struct.max7301** %5, align 8
  %18 = getelementptr inbounds %struct.max7301, %struct.max7301* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = lshr i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32* %23, i32** %6, align 8
  %24 = load %struct.max7301*, %struct.max7301** %5, align 8
  %25 = getelementptr inbounds %struct.max7301, %struct.max7301* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @PIN_CONFIG_IN_PULLUP, align 4
  store i32 %32, i32* %8, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @PIN_CONFIG_IN_WO_PULLUP, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.max7301*, %struct.max7301** %5, align 8
  %37 = getelementptr inbounds %struct.max7301, %struct.max7301* %36, i32 0, i32 3
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PIN_CONFIG_MASK, align 4
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %40, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.max7301*, %struct.max7301** %5, align 8
  %52 = getelementptr inbounds %struct.max7301, %struct.max7301* %51, i32 0, i32 2
  %53 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %52, align 8
  %54 = load %struct.max7301*, %struct.max7301** %5, align 8
  %55 = getelementptr inbounds %struct.max7301, %struct.max7301* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = lshr i32 %57, 2
  %59 = add i32 8, %58
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 %53(i32 %56, i32 %59, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.max7301*, %struct.max7301** %5, align 8
  %64 = getelementptr inbounds %struct.max7301, %struct.max7301* %63, i32 0, i32 3
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.max7301* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
