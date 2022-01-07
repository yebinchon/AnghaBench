; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.dln2_gpio = type { i32, i32 }
%struct.dln2_gpio_pin = type { i64 }
%struct.dln2_gpio_pin_val = type { i64, i32 }

@DLN2_GPIO_PIN_ENABLE = common dso_local global i32 0, align 4
@DLN2_GPIO_PIN_GET_DIRECTION = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@DLN2_GPIO_PIN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @dln2_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dln2_gpio*, align 8
  %7 = alloca %struct.dln2_gpio_pin, align 8
  %8 = alloca %struct.dln2_gpio_pin_val, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.dln2_gpio* %12, %struct.dln2_gpio** %6, align 8
  %13 = getelementptr inbounds %struct.dln2_gpio_pin, %struct.dln2_gpio_pin* %7, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @cpu_to_le16(i32 %14)
  store i64 %15, i64* %13, align 8
  store i32 16, i32* %9, align 4
  %16 = load %struct.dln2_gpio*, %struct.dln2_gpio** %6, align 8
  %17 = load i32, i32* @DLN2_GPIO_PIN_ENABLE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dln2_gpio_pin_cmd(%struct.dln2_gpio* %16, i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.dln2_gpio*, %struct.dln2_gpio** %6, align 8
  %26 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DLN2_GPIO_PIN_GET_DIRECTION, align 4
  %29 = call i32 @dln2_transfer(i32 %27, i32 %28, %struct.dln2_gpio_pin* %7, i32 8, %struct.dln2_gpio_pin_val* %8, i32* %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %71

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 16
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.dln2_gpio_pin, %struct.dln2_gpio_pin* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.dln2_gpio_pin_val, %struct.dln2_gpio_pin_val* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %34
  %45 = load i32, i32* @EPROTO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %65

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.dln2_gpio_pin_val, %struct.dln2_gpio_pin_val* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %62 [
    i32 129, label %50
    i32 128, label %56
  ]

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.dln2_gpio*, %struct.dln2_gpio** %6, align 8
  %53 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clear_bit(i32 %51, i32 %54)
  store i32 0, i32* %3, align 4
  br label %71

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.dln2_gpio*, %struct.dln2_gpio** %6, align 8
  %59 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_bit(i32 %57, i32 %60)
  store i32 0, i32* %3, align 4
  br label %71

62:                                               ; preds = %47
  %63 = load i32, i32* @EPROTO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62, %44
  %66 = load %struct.dln2_gpio*, %struct.dln2_gpio** %6, align 8
  %67 = load i32, i32* @DLN2_GPIO_PIN_DISABLE, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dln2_gpio_pin_cmd(%struct.dln2_gpio* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %56, %50, %32, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @dln2_gpio_pin_cmd(%struct.dln2_gpio*, i32, i32) #1

declare dso_local i32 @dln2_transfer(i32, i32, %struct.dln2_gpio_pin*, i32, %struct.dln2_gpio_pin_val*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
