; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps6586x.c_tps6586x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps6586x.c_tps6586x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.tps6586x_platform_data = type { i32 }
%struct.tps6586x_gpio = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@tps6586x_gpio_output = common dso_local global i32 0, align 4
@tps6586x_gpio_set = common dso_local global i32 0, align 4
@tps6586x_gpio_get = common dso_local global i32 0, align 4
@tps6586x_gpio_to_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps6586x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6586x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps6586x_platform_data*, align 8
  %5 = alloca %struct.tps6586x_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = call %struct.tps6586x_platform_data* @dev_get_platdata(%struct.TYPE_8__* %10)
  store %struct.tps6586x_platform_data* %11, %struct.tps6586x_platform_data** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tps6586x_gpio* @devm_kzalloc(%struct.TYPE_6__* %13, i32 56, i32 %14)
  store %struct.tps6586x_gpio* %15, %struct.tps6586x_gpio** %5, align 8
  %16 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %17 = icmp ne %struct.tps6586x_gpio* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %103

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %27 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %26, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load i32, i32* @THIS_MODULE, align 4
  %29 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %30 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 10
  store i32 %28, i32* %31, align 4
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %36 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 9
  store i32 %34, i32* %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %41 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %44 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %47 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @tps6586x_gpio_output, align 4
  %50 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %51 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @tps6586x_gpio_set, align 4
  %54 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %55 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @tps6586x_gpio_get, align 4
  %58 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %59 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @tps6586x_gpio_to_irq, align 4
  %62 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %63 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %4, align 8
  %66 = icmp ne %struct.tps6586x_platform_data* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %21
  %68 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %4, align 8
  %69 = getelementptr inbounds %struct.tps6586x_platform_data, %struct.tps6586x_platform_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %4, align 8
  %74 = getelementptr inbounds %struct.tps6586x_platform_data, %struct.tps6586x_platform_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %77 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  br label %83

79:                                               ; preds = %67, %21
  %80 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %81 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32 -1, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %87 = getelementptr inbounds %struct.tps6586x_gpio, %struct.tps6586x_gpio* %86, i32 0, i32 0
  %88 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %89 = call i32 @devm_gpiochip_add_data(%struct.TYPE_6__* %85, %struct.TYPE_7__* %87, %struct.tps6586x_gpio* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @dev_err(%struct.TYPE_6__* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %103

98:                                               ; preds = %83
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.tps6586x_gpio*, %struct.tps6586x_gpio** %5, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.tps6586x_gpio* %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %98, %92, %18
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.tps6586x_platform_data* @dev_get_platdata(%struct.TYPE_8__*) #1

declare dso_local %struct.tps6586x_gpio* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.tps6586x_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps6586x_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
