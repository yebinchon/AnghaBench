; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_dir_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_dir_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.thunderx_gpio = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GPIO_BIT_CFG_TX_OE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GPIO_BIT_CFG_PIN_XOR = common dso_local global i32 0, align 4
@GPIO_BIT_CFG_TX_OD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @thunderx_gpio_dir_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_gpio_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thunderx_gpio*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %11 = call %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.thunderx_gpio* %11, %struct.thunderx_gpio** %8, align 8
  %12 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %8, align 8
  %13 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GPIO_BIT_CFG_TX_OE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @thunderx_gpio_is_gpio(%struct.thunderx_gpio* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %70

29:                                               ; preds = %3
  %30 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %8, align 8
  %31 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %30, i32 0, i32 0
  %32 = call i32 @raw_spin_lock(i32* %31)
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @thunderx_gpio_set(%struct.gpio_chip* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %8, align 8
  %39 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @test_bit(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load i32, i32* @GPIO_BIT_CFG_PIN_XOR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %29
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %8, align 8
  %50 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @test_bit(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @GPIO_BIT_CFG_TX_OD, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %8, align 8
  %61 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @bit_cfg_reg(i32 %63)
  %65 = add nsw i64 %62, %64
  %66 = call i32 @writeq(i32 %59, i64 %65)
  %67 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %8, align 8
  %68 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %67, i32 0, i32 0
  %69 = call i32 @raw_spin_unlock(i32* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %58, %26
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @thunderx_gpio_is_gpio(%struct.thunderx_gpio*, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @thunderx_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @bit_cfg_reg(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
