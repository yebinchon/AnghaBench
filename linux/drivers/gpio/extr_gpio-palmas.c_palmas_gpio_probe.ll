; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-palmas.c_palmas_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-palmas.c_palmas_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_device_data = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.palmas = type { i32 }
%struct.palmas_platform_data = type { i32 }
%struct.palmas_gpio = type { %struct.TYPE_8__, %struct.palmas* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32 }

@palmas_dev_data = common dso_local global %struct.palmas_device_data zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@palmas_gpio_input = common dso_local global i32 0, align 4
@palmas_gpio_output = common dso_local global i32 0, align 4
@palmas_gpio_to_irq = common dso_local global i32 0, align 4
@palmas_gpio_set = common dso_local global i32 0, align 4
@palmas_gpio_get = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palmas_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.palmas*, align 8
  %5 = alloca %struct.palmas_platform_data*, align 8
  %6 = alloca %struct.palmas_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.palmas_device_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.palmas* @dev_get_drvdata(i32 %12)
  store %struct.palmas* %13, %struct.palmas** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.palmas_device_data* @of_device_get_match_data(%struct.TYPE_7__* %15)
  store %struct.palmas_device_data* %16, %struct.palmas_device_data** %8, align 8
  %17 = load %struct.palmas_device_data*, %struct.palmas_device_data** %8, align 8
  %18 = icmp ne %struct.palmas_device_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.palmas_device_data* @palmas_dev_data, %struct.palmas_device_data** %8, align 8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.palmas_gpio* @devm_kzalloc(%struct.TYPE_7__* %22, i32 64, i32 %23)
  store %struct.palmas_gpio* %24, %struct.palmas_gpio** %6, align 8
  %25 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %26 = icmp ne %struct.palmas_gpio* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %120

30:                                               ; preds = %20
  %31 = load %struct.palmas*, %struct.palmas** %4, align 8
  %32 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %33 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %32, i32 0, i32 1
  store %struct.palmas* %31, %struct.palmas** %33, align 8
  %34 = load i32, i32* @THIS_MODULE, align 4
  %35 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %36 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 11
  store i32 %34, i32* %37, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_name(%struct.TYPE_7__* %39)
  %41 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %42 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 10
  store i32 %40, i32* %43, align 8
  %44 = load %struct.palmas_device_data*, %struct.palmas_device_data** %8, align 8
  %45 = getelementptr inbounds %struct.palmas_device_data, %struct.palmas_device_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %48 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 9
  store i32 %46, i32* %49, align 4
  %50 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %51 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @palmas_gpio_input, align 4
  %54 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %55 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 8
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @palmas_gpio_output, align 4
  %58 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %59 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 7
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @palmas_gpio_to_irq, align 4
  %62 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %63 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 6
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @palmas_gpio_set, align 4
  %66 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %67 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @palmas_gpio_get, align 4
  %70 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %71 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %76 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %77, align 8
  %78 = load %struct.palmas*, %struct.palmas** %4, align 8
  %79 = getelementptr inbounds %struct.palmas, %struct.palmas* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.palmas_platform_data* @dev_get_platdata(i32 %80)
  store %struct.palmas_platform_data* %81, %struct.palmas_platform_data** %5, align 8
  %82 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %5, align 8
  %83 = icmp ne %struct.palmas_platform_data* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %30
  %85 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %5, align 8
  %86 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %5, align 8
  %91 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %94 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  br label %100

96:                                               ; preds = %84, %30
  %97 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %98 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 -1, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %104 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %103, i32 0, i32 0
  %105 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %106 = call i32 @devm_gpiochip_add_data(%struct.TYPE_7__* %102, %struct.TYPE_8__* %104, %struct.palmas_gpio* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @dev_err(%struct.TYPE_7__* %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %120

115:                                              ; preds = %100
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %118 = call i32 @platform_set_drvdata(%struct.platform_device* %116, %struct.palmas_gpio* %117)
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %115, %109, %27
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #1

declare dso_local %struct.palmas_device_data* @of_device_get_match_data(%struct.TYPE_7__*) #1

declare dso_local %struct.palmas_gpio* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local %struct.palmas_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.palmas_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.palmas_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
