; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_ddc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_ddc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.gpio_config_data = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.hw_gpio = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@GPIO_RESULT_OK = common dso_local global i32 0, align 4
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE = common dso_local global i32 0, align 4
@GPIO_CONFIG_TYPE_DDC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_ddc_open(%struct.ddc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpio_config_data, align 4
  %10 = alloca %struct.hw_gpio*, align 8
  %11 = alloca %struct.hw_gpio*, align 8
  store %struct.ddc* %0, %struct.ddc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ddc*, %struct.ddc** %5, align 8
  %13 = getelementptr inbounds %struct.ddc, %struct.ddc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dal_gpio_open_ex(%struct.TYPE_10__* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @GPIO_RESULT_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = call i32 (...) @BREAK_TO_DEBUGGER()
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %100

23:                                               ; preds = %3
  %24 = load %struct.ddc*, %struct.ddc** %5, align 8
  %25 = getelementptr inbounds %struct.ddc, %struct.ddc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dal_gpio_open_ex(%struct.TYPE_10__* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GPIO_RESULT_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %94

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE, align 4
  %40 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %9, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @GPIO_CONFIG_TYPE_DDC, align 4
  %43 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %9, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %9, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ddc*, %struct.ddc** %5, align 8
  %50 = getelementptr inbounds %struct.ddc, %struct.ddc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.hw_gpio* @FROM_HW_GPIO_PIN(i32 %53)
  store %struct.hw_gpio* %54, %struct.hw_gpio** %10, align 8
  %55 = load %struct.ddc*, %struct.ddc** %5, align 8
  %56 = getelementptr inbounds %struct.ddc, %struct.ddc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.hw_gpio* @FROM_HW_GPIO_PIN(i32 %59)
  store %struct.hw_gpio* %60, %struct.hw_gpio** %11, align 8
  %61 = load %struct.hw_gpio*, %struct.hw_gpio** %10, align 8
  %62 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %9, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.hw_gpio*, %struct.hw_gpio** %11, align 8
  %71 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %9, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load %struct.ddc*, %struct.ddc** %5, align 8
  %80 = getelementptr inbounds %struct.ddc, %struct.ddc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call i32 @dal_gpio_set_config(%struct.TYPE_10__* %81, %struct.gpio_config_data* %9)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @GPIO_RESULT_OK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %44
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %100

88:                                               ; preds = %44
  %89 = call i32 (...) @BREAK_TO_DEBUGGER()
  %90 = load %struct.ddc*, %struct.ddc** %5, align 8
  %91 = getelementptr inbounds %struct.ddc, %struct.ddc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = call i32 @dal_gpio_close(%struct.TYPE_10__* %92)
  br label %94

94:                                               ; preds = %88, %32
  %95 = load %struct.ddc*, %struct.ddc** %5, align 8
  %96 = getelementptr inbounds %struct.ddc, %struct.ddc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = call i32 @dal_gpio_close(%struct.TYPE_10__* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %94, %86, %20
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @dal_gpio_open_ex(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local %struct.hw_gpio* @FROM_HW_GPIO_PIN(i32) #1

declare dso_local i32 @dal_gpio_set_config(%struct.TYPE_10__*, %struct.gpio_config_data*) #1

declare dso_local i32 @dal_gpio_close(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
