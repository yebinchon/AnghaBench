; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_gpio_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_gpio_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_led_platform_data = type { i32, i32, %struct.gpio_led* }
%struct.gpio_led = type { i32, i32, %struct.gpio_leds_priv* }
%struct.gpio_leds_priv = type { i32, %struct.gpio_led_data* }
%struct.gpio_led_data = type { %struct.gpio_leds_priv* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Skipping unavailable LED gpio %d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_led_platform_data*, align 8
  %5 = alloca %struct.gpio_leds_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpio_led*, align 8
  %9 = alloca %struct.gpio_led_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.gpio_led_platform_data* @dev_get_platdata(i32* %11)
  store %struct.gpio_led_platform_data* %12, %struct.gpio_led_platform_data** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.gpio_led_platform_data*, %struct.gpio_led_platform_data** %4, align 8
  %14 = icmp ne %struct.gpio_led_platform_data* %13, null
  br i1 %14, label %15, label %111

15:                                               ; preds = %1
  %16 = load %struct.gpio_led_platform_data*, %struct.gpio_led_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.gpio_led_platform_data, %struct.gpio_led_platform_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %111

20:                                               ; preds = %15
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.gpio_led_platform_data*, %struct.gpio_led_platform_data** %4, align 8
  %24 = getelementptr inbounds %struct.gpio_led_platform_data, %struct.gpio_led_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sizeof_gpio_leds_priv(i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.gpio_leds_priv* @devm_kzalloc(i32* %22, i32 %26, i32 %27)
  store %struct.gpio_leds_priv* %28, %struct.gpio_leds_priv** %5, align 8
  %29 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %5, align 8
  %30 = icmp ne %struct.gpio_leds_priv* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %125

34:                                               ; preds = %20
  %35 = load %struct.gpio_led_platform_data*, %struct.gpio_led_platform_data** %4, align 8
  %36 = getelementptr inbounds %struct.gpio_led_platform_data, %struct.gpio_led_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %5, align 8
  %39 = getelementptr inbounds %struct.gpio_leds_priv, %struct.gpio_leds_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %107, %34
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_leds_priv, %struct.gpio_leds_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %110

46:                                               ; preds = %40
  %47 = load %struct.gpio_led_platform_data*, %struct.gpio_led_platform_data** %4, align 8
  %48 = getelementptr inbounds %struct.gpio_led_platform_data, %struct.gpio_led_platform_data* %47, i32 0, i32 2
  %49 = load %struct.gpio_led*, %struct.gpio_led** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %49, i64 %51
  store %struct.gpio_led* %52, %struct.gpio_led** %8, align 8
  %53 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %5, align 8
  %54 = getelementptr inbounds %struct.gpio_leds_priv, %struct.gpio_leds_priv* %53, i32 0, i32 1
  %55 = load %struct.gpio_led_data*, %struct.gpio_led_data** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %55, i64 %57
  store %struct.gpio_led_data* %58, %struct.gpio_led_data** %9, align 8
  %59 = load %struct.gpio_led*, %struct.gpio_led** %8, align 8
  %60 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %59, i32 0, i32 2
  %61 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %60, align 8
  %62 = icmp ne %struct.gpio_leds_priv* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %46
  %64 = load %struct.gpio_led*, %struct.gpio_led** %8, align 8
  %65 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %64, i32 0, i32 2
  %66 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %65, align 8
  %67 = load %struct.gpio_led_data*, %struct.gpio_led_data** %9, align 8
  %68 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %67, i32 0, i32 0
  store %struct.gpio_leds_priv* %66, %struct.gpio_leds_priv** %68, align 8
  br label %77

69:                                               ; preds = %46
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.gpio_led*, %struct.gpio_led** %8, align 8
  %74 = call %struct.gpio_leds_priv* @gpio_led_get_gpiod(i32* %71, i32 %72, %struct.gpio_led* %73)
  %75 = load %struct.gpio_led_data*, %struct.gpio_led_data** %9, align 8
  %76 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %75, i32 0, i32 0
  store %struct.gpio_leds_priv* %74, %struct.gpio_leds_priv** %76, align 8
  br label %77

77:                                               ; preds = %69, %63
  %78 = load %struct.gpio_led_data*, %struct.gpio_led_data** %9, align 8
  %79 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %78, i32 0, i32 0
  %80 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %79, align 8
  %81 = call i64 @IS_ERR(%struct.gpio_leds_priv* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.gpio_led*, %struct.gpio_led** %8, align 8
  %87 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.gpio_led*, %struct.gpio_led** %8, align 8
  %90 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_info(i32* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91)
  br label %107

93:                                               ; preds = %77
  %94 = load %struct.gpio_led*, %struct.gpio_led** %8, align 8
  %95 = load %struct.gpio_led_data*, %struct.gpio_led_data** %9, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.gpio_led_platform_data*, %struct.gpio_led_platform_data** %4, align 8
  %99 = getelementptr inbounds %struct.gpio_led_platform_data, %struct.gpio_led_platform_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @create_gpio_led(%struct.gpio_led* %94, %struct.gpio_led_data* %95, i32* %97, i32* null, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %125

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %83
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %40

110:                                              ; preds = %40
  br label %121

111:                                              ; preds = %15, %1
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call %struct.gpio_leds_priv* @gpio_leds_create(%struct.platform_device* %112)
  store %struct.gpio_leds_priv* %113, %struct.gpio_leds_priv** %5, align 8
  %114 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %5, align 8
  %115 = call i64 @IS_ERR(%struct.gpio_leds_priv* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %5, align 8
  %119 = call i32 @PTR_ERR(%struct.gpio_leds_priv* %118)
  store i32 %119, i32* %2, align 4
  br label %125

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %110
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %5, align 8
  %124 = call i32 @platform_set_drvdata(%struct.platform_device* %122, %struct.gpio_leds_priv* %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %117, %104, %31
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.gpio_led_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.gpio_leds_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @sizeof_gpio_leds_priv(i32) #1

declare dso_local %struct.gpio_leds_priv* @gpio_led_get_gpiod(i32*, i32, %struct.gpio_led*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_leds_priv*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @create_gpio_led(%struct.gpio_led*, %struct.gpio_led_data*, i32*, i32*, i32) #1

declare dso_local %struct.gpio_leds_priv* @gpio_leds_create(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_leds_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_leds_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
