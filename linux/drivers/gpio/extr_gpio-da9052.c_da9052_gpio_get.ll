; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.da9052_gpio = type { i32 }

@DA9052_GPIO_0_1_REG = common dso_local global i64 0, align 8
@DA9052_GPIO_ODD_PORT_PIN = common dso_local global i32 0, align 4
@DA9052_GPIO_EVEN_PORT_PIN = common dso_local global i32 0, align 4
@DA9052_GPIO_MAX_PORTS_PER_REGISTER = common dso_local global i32 0, align 4
@DA9052_STATUS_C_REG = common dso_local global i64 0, align 8
@DA9052_STATUS_D_REG = common dso_local global i64 0, align 8
@DA9052_GPIO_ODD_PORT_MODE = common dso_local global i32 0, align 4
@DA9052_GPIO_EVEN_PORT_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @da9052_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9052_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.da9052_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.da9052_gpio* %10, %struct.da9052_gpio** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.da9052_gpio*, %struct.da9052_gpio** %6, align 8
  %12 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @DA9052_GPIO_0_1_REG, align 8
  %15 = load i32, i32* %5, align 4
  %16 = lshr i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = call i32 @da9052_reg_read(i32 %13, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %94

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @da9052_gpio_port_odd(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DA9052_GPIO_ODD_PORT_PIN, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 4
  store i32 %33, i32* %7, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DA9052_GPIO_EVEN_PORT_PIN, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %91 [
    i32 129, label %40
    i32 128, label %71
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DA9052_GPIO_MAX_PORTS_PER_REGISTER, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.da9052_gpio*, %struct.da9052_gpio** %6, align 8
  %46 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @DA9052_STATUS_C_REG, align 8
  %49 = call i32 @da9052_reg_read(i32 %47, i64 %48)
  store i32 %49, i32* %8, align 4
  br label %56

50:                                               ; preds = %40
  %51 = load %struct.da9052_gpio*, %struct.da9052_gpio** %6, align 8
  %52 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @DA9052_STATUS_D_REG, align 8
  %55 = call i32 @da9052_reg_read(i32 %53, i64 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %44
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %94

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @DA9052_GPIO_SHIFT_COUNT(i32 %63)
  %65 = shl i32 1, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %94

71:                                               ; preds = %38
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @da9052_gpio_port_odd(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @DA9052_GPIO_ODD_PORT_MODE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %94

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @DA9052_GPIO_EVEN_PORT_MODE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %94

91:                                               ; preds = %38
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %83, %75, %61, %59, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.da9052_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @da9052_reg_read(i32, i64) #1

declare dso_local i64 @da9052_gpio_port_odd(i32) #1

declare dso_local i32 @DA9052_GPIO_SHIFT_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
