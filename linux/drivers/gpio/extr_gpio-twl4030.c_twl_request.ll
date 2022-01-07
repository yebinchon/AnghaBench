; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_twl_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_twl_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_twl4030_priv = type { i32, i32 }
%struct.twl4030_gpio_platform_data = type { i32 }

@TWL4030_GPIO_MAX = common dso_local global i32 0, align 4
@LEDEN_LEDAON = common dso_local global i32 0, align 4
@LEDEN_LEDAEXT = common dso_local global i32 0, align 4
@LEDEN_LEDAPWM = common dso_local global i32 0, align 4
@LEDEN_PWM_LENGTHA = common dso_local global i32 0, align 4
@TWL4030_PWMAON_REG = common dso_local global i32 0, align 4
@TWL4030_PWMBON_REG = common dso_local global i32 0, align 4
@TWL4030_MODULE_LED = common dso_local global i32 0, align 4
@cached_leden = common dso_local global i32 0, align 4
@TWL4030_LED_LEDEN_REG = common dso_local global i32 0, align 4
@MASK_GPIO_CTRL_GPIO_ON = common dso_local global i32 0, align 4
@REG_GPIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @twl_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_twl4030_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.twl4030_gpio_platform_data*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call %struct.gpio_twl4030_priv* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.gpio_twl4030_priv* %12, %struct.gpio_twl4030_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %14 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %2
  %20 = load i32, i32* @LEDEN_LEDAON, align 4
  %21 = load i32, i32* @LEDEN_LEDAEXT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @LEDEN_LEDAPWM, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @LEDEN_PWM_LENGTHA, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @TWL4030_PWMAON_REG, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @TWL4030_PWMBON_REG, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %19
  %38 = load i32, i32* @TWL4030_MODULE_LED, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @twl_i2c_write_u8(i32 %38, i32 127, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %97

45:                                               ; preds = %37
  %46 = load i32, i32* @TWL4030_MODULE_LED, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @twl_i2c_write_u8(i32 %46, i32 127, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %97

52:                                               ; preds = %45
  %53 = load i32, i32* @TWL4030_MODULE_LED, align 4
  %54 = load i32, i32* @TWL4030_LED_LEDEN_REG, align 4
  %55 = call i32 @twl_i2c_read_u8(i32 %53, i32* @cached_leden, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %97

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* @cached_leden, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* @cached_leden, align 4
  %64 = load i32, i32* @TWL4030_MODULE_LED, align 4
  %65 = load i32, i32* @cached_leden, align 4
  %66 = load i32, i32* @TWL4030_LED_LEDEN_REG, align 4
  %67 = call i32 @twl_i2c_write_u8(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %97

71:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %97

72:                                               ; preds = %2
  %73 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %74 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @MASK_GPIO_CTRL_GPIO_ON, align 4
  store i32 %78, i32* %10, align 4
  %79 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %80 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.twl4030_gpio_platform_data* @dev_get_platdata(i32 %81)
  store %struct.twl4030_gpio_platform_data* %82, %struct.twl4030_gpio_platform_data** %9, align 8
  %83 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %9, align 8
  %84 = icmp ne %struct.twl4030_gpio_platform_data* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %9, align 8
  %87 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 3
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %85, %77
  %93 = load i32, i32* @REG_GPIO_CTRL, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @gpio_twl4030_write(i32 %93, i32 %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %72
  br label %97

97:                                               ; preds = %96, %71, %70, %58, %51, %44
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @BIT(i32 %101)
  %103 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %104 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %97
  %108 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %109 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.gpio_twl4030_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local %struct.twl4030_gpio_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @gpio_twl4030_write(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
