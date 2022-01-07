; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_gpio_twl4030_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_gpio_twl4030_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.twl4030_gpio_platform_data = type { i32 (i32*, i32, i32)* }
%struct.gpio_twl4030_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TWL4030_GPIO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"teardown --> %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_twl4030_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_twl4030_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl4030_gpio_platform_data*, align 8
  %5 = alloca %struct.gpio_twl4030_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.twl4030_gpio_platform_data* @dev_get_platdata(i32* %8)
  store %struct.twl4030_gpio_platform_data* %9, %struct.twl4030_gpio_platform_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.gpio_twl4030_priv* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.gpio_twl4030_priv* %11, %struct.gpio_twl4030_priv** %5, align 8
  %12 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %13 = icmp ne %struct.twl4030_gpio_platform_data* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %15, i32 0, i32 0
  %17 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %16, align 8
  %18 = icmp ne i32 (i32*, i32, i32)* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %20, i32 0, i32 0
  %22 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %21, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %26 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %30 = call i32 %22(i32* %24, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39, %14, %1
  %41 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %42 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %41, i32 0, i32 0
  %43 = call i32 @gpiochip_remove(%struct.TYPE_2__* %42)
  %44 = call i64 (...) @is_module()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %51

47:                                               ; preds = %40
  %48 = call i32 @WARN_ON(i32 1)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %46, %33
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.twl4030_gpio_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.gpio_twl4030_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_2__*) #1

declare dso_local i64 @is_module(...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
