; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ftgpio010.c_ftgpio_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ftgpio010.c_ftgpio_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ftgpio_gpio = type { i64, i32, i32 }

@PIN_CONFIG_INPUT_DEBOUNCE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"prescale divisor: %08x, resulting frequency %lu Hz\0A\00", align 1
@GPIO_DEBOUNCE_PRESCALE = common dso_local global i64 0, align 8
@GPIO_DEBOUNCE_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @ftgpio_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgpio_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ftgpio_gpio*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @pinconf_to_config_param(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @pinconf_to_config_argument(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %19 = call %struct.ftgpio_gpio* @gpiochip_get_data(%struct.gpio_chip* %18)
  store %struct.ftgpio_gpio* %19, %struct.ftgpio_gpio** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PIN_CONFIG_INPUT_DEBOUNCE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %107

26:                                               ; preds = %3
  %27 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %10, align 8
  %28 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @clk_get_rate(i32 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DIV_ROUND_CLOSEST(i64 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 16777216
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %107

39:                                               ; preds = %26
  %40 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %10, align 8
  %41 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %44, %46
  %48 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %47)
  %49 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %10, align 8
  %50 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @GPIO_DEBOUNCE_PRESCALE, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %39
  %59 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %10, align 8
  %60 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GPIO_DEBOUNCE_EN, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %10, align 8
  %71 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @GPIO_DEBOUNCE_EN, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  store i32 0, i32* %4, align 4
  br label %107

76:                                               ; preds = %39
  %77 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %10, align 8
  %78 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @GPIO_DEBOUNCE_EN, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* @ENOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %107

88:                                               ; preds = %76
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %10, align 8
  %91 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @GPIO_DEBOUNCE_PRESCALE, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @BIT(i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %10, align 8
  %102 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @GPIO_DEBOUNCE_EN, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %88, %85, %58, %36, %23
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local %struct.ftgpio_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
