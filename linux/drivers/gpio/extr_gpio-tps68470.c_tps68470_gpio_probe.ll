; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps68470.c_tps68470_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps68470.c_tps68470_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tps68470_gpio_data = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tps68470-gpio\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@tps68470_gpio_input = common dso_local global i32 0, align 4
@tps68470_gpio_output = common dso_local global i32 0, align 4
@tps68470_gpio_get = common dso_local global i32 0, align 4
@tps68470_gpio_get_direction = common dso_local global i32 0, align 4
@tps68470_gpio_set = common dso_local global i32 0, align 4
@tps68470_names = common dso_local global i32 0, align 4
@TPS68470_N_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to register gpio_chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps68470_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps68470_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps68470_gpio_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tps68470_gpio_data* @devm_kzalloc(%struct.TYPE_5__* %7, i32 64, i32 %8)
  store %struct.tps68470_gpio_data* %9, %struct.tps68470_gpio_data** %4, align 8
  %10 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %11 = icmp ne %struct.tps68470_gpio_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_get_drvdata(i32 %19)
  %21 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %22 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %24 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @THIS_MODULE, align 4
  %27 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %28 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 11
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @tps68470_gpio_input, align 4
  %31 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %32 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 10
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @tps68470_gpio_output, align 4
  %35 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %36 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 9
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @tps68470_gpio_get, align 4
  %39 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %40 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 8
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @tps68470_gpio_get_direction, align 4
  %43 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %44 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @tps68470_gpio_set, align 4
  %47 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %48 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  store i32 %46, i32* %49, align 8
  %50 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %51 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @tps68470_names, align 4
  %54 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %55 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @TPS68470_N_GPIO, align 4
  %58 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %59 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 8
  %61 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %62 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 -1, i32* %63, align 4
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %67 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %72 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %71, i32 0, i32 0
  %73 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %74 = call i32 @devm_gpiochip_add_data(%struct.TYPE_5__* %70, %struct.TYPE_6__* %72, %struct.tps68470_gpio_data* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %15
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @dev_err(%struct.TYPE_5__* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %88

83:                                               ; preds = %15
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %4, align 8
  %86 = call i32 @platform_set_drvdata(%struct.platform_device* %84, %struct.tps68470_gpio_data* %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %77, %12
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.tps68470_gpio_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.tps68470_gpio_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps68470_gpio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
