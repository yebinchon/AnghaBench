; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tc3589x_gpio = type { %struct.tc3589x* }
%struct.tc3589x = type { i32 }

@TC3589x_GPIOODM0 = common dso_local global i64 0, align 8
@TC3589x_GPIOODE0 = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @tc3589x_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tc3589x_gpio*, align 8
  %9 = alloca %struct.tc3589x*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %15 = call %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.tc3589x_gpio* %15, %struct.tc3589x_gpio** %8, align 8
  %16 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %8, align 8
  %17 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %16, i32 0, i32 0
  %18 = load %struct.tc3589x*, %struct.tc3589x** %17, align 8
  store %struct.tc3589x* %18, %struct.tc3589x** %9, align 8
  %19 = load i64, i64* @TC3589x_GPIOODM0, align 8
  %20 = load i32, i32* %6, align 4
  %21 = udiv i32 %20, 8
  %22 = mul i32 %21, 2
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* @TC3589x_GPIOODE0, align 8
  %26 = load i32, i32* %6, align 4
  %27 = udiv i32 %26, 8
  %28 = mul i32 %27, 2
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  store i64 %30, i64* %11, align 8
  %31 = load i32, i32* %6, align 4
  %32 = urem i32 %31, 8
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @pinconf_to_config_param(i64 %33)
  switch i32 %34, label %79 [
    i32 130, label %35
    i32 129, label %53
    i32 128, label %73
  ]

35:                                               ; preds = %3
  %36 = load %struct.tc3589x*, %struct.tc3589x** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = call i32 @tc3589x_set_bits(%struct.tc3589x* %36, i64 %37, i32 %39, i32 0)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %4, align 4
  br label %83

45:                                               ; preds = %35
  %46 = load %struct.tc3589x*, %struct.tc3589x** %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = call i32 @tc3589x_set_bits(%struct.tc3589x* %46, i64 %47, i32 %49, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %83

53:                                               ; preds = %3
  %54 = load %struct.tc3589x*, %struct.tc3589x** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = call i32 @tc3589x_set_bits(%struct.tc3589x* %54, i64 %55, i32 %57, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %4, align 4
  br label %83

65:                                               ; preds = %53
  %66 = load %struct.tc3589x*, %struct.tc3589x** %9, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @BIT(i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = call i32 @tc3589x_set_bits(%struct.tc3589x* %66, i64 %67, i32 %69, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %83

73:                                               ; preds = %3
  %74 = load %struct.tc3589x*, %struct.tc3589x** %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = call i32 @tc3589x_set_bits(%struct.tc3589x* %74, i64 %75, i32 %77, i32 0)
  store i32 %78, i32* %4, align 4
  br label %83

79:                                               ; preds = %3
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* @ENOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %73, %65, %63, %45, %43
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @tc3589x_set_bits(%struct.tc3589x*, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
