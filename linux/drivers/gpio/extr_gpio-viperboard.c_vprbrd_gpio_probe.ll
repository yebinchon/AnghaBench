; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vprbrd = type { i32 }
%struct.vprbrd_gpio = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.vprbrd* }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"viperboard gpio a\00", align 1
@THIS_MODULE = common dso_local global i8* null, align 8
@vprbrd_gpioa_set = common dso_local global i32 0, align 4
@vprbrd_gpioa_get = common dso_local global i32 0, align 4
@vprbrd_gpioa_direction_input = common dso_local global i32 0, align 4
@vprbrd_gpioa_direction_output = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"could not add gpio a\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"viperboard gpio b\00", align 1
@vprbrd_gpiob_set = common dso_local global i32 0, align 4
@vprbrd_gpiob_get = common dso_local global i32 0, align 4
@vprbrd_gpiob_direction_input = common dso_local global i32 0, align 4
@vprbrd_gpiob_direction_output = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"could not add gpio b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vprbrd_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vprbrd*, align 8
  %5 = alloca %struct.vprbrd_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vprbrd* @dev_get_drvdata(i32 %10)
  store %struct.vprbrd* %11, %struct.vprbrd** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vprbrd_gpio* @devm_kzalloc(%struct.TYPE_5__* %13, i32 120, i32 %14)
  store %struct.vprbrd_gpio* %15, %struct.vprbrd_gpio** %5, align 8
  %16 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %17 = icmp eq %struct.vprbrd_gpio* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %135

21:                                               ; preds = %1
  %22 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %23 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %24 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %23, i32 0, i32 2
  store %struct.vprbrd* %22, %struct.vprbrd** %24, align 8
  %25 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %26 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %31 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %32, align 8
  %33 = load i8*, i8** @THIS_MODULE, align 8
  %34 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %35 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 9
  store i8* %33, i8** %36, align 8
  %37 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %38 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 8
  %40 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %41 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 16, i32* %42, align 4
  %43 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %44 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @vprbrd_gpioa_set, align 4
  %47 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %48 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 8
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @vprbrd_gpioa_get, align 4
  %51 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %52 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 7
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @vprbrd_gpioa_direction_input, align 4
  %55 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %56 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @vprbrd_gpioa_direction_output, align 4
  %59 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %60 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %65 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %64, i32 0, i32 1
  %66 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %67 = call i32 @devm_gpiochip_add_data(%struct.TYPE_5__* %63, %struct.TYPE_6__* %65, %struct.vprbrd_gpio* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %21
  %71 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %72 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = call i32 @dev_err(%struct.TYPE_5__* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %135

77:                                               ; preds = %21
  %78 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %79 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %84 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %85, align 8
  %86 = load i8*, i8** @THIS_MODULE, align 8
  %87 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %88 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 9
  store i8* %86, i8** %89, align 8
  %90 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %91 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 -1, i32* %92, align 8
  %93 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %94 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i32 16, i32* %95, align 4
  %96 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %97 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* @vprbrd_gpiob_set, align 4
  %100 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %101 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 8
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @vprbrd_gpiob_get, align 4
  %104 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %105 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 7
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @vprbrd_gpiob_direction_input, align 4
  %108 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %109 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 6
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @vprbrd_gpiob_direction_output, align 4
  %112 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %113 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  store i32 %111, i32* %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %118 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %117, i32 0, i32 0
  %119 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %120 = call i32 @devm_gpiochip_add_data(%struct.TYPE_5__* %116, %struct.TYPE_6__* %118, %struct.vprbrd_gpio* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %77
  %124 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %125 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = call i32 @dev_err(%struct.TYPE_5__* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %135

130:                                              ; preds = %77
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %5, align 8
  %133 = call i32 @platform_set_drvdata(%struct.platform_device* %131, %struct.vprbrd_gpio* %132)
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %130, %123, %70, %18
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.vprbrd* @dev_get_drvdata(i32) #1

declare dso_local %struct.vprbrd_gpio* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.vprbrd_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vprbrd_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
