; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xra1403.c_xra1403_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xra1403.c_xra1403_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.xra1403 = type { %struct.TYPE_2__, %struct.gpio_desc* }
%struct.TYPE_2__ = type { i32, i8*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not get reset-gpios\0A\00", align 1
@xra1403_direction_input = common dso_local global i32 0, align 4
@xra1403_direction_output = common dso_local global i32 0, align 4
@xra1403_get_direction = common dso_local global i32 0, align 4
@xra1403_get = common dso_local global i32 0, align 4
@xra1403_set = common dso_local global i32 0, align 4
@xra1403_dbg_show = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"xra1403\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@xra1403_regmap_cfg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to register gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @xra1403_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xra1403_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.xra1403*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xra1403* @devm_kzalloc(i32* %8, i32 72, i32 %9)
  store %struct.xra1403* %10, %struct.xra1403** %4, align 8
  %11 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %12 = icmp ne %struct.xra1403* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %111

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %20 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.gpio_desc* %20, %struct.gpio_desc** %5, align 8
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %22 = call i64 @IS_ERR(%struct.gpio_desc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %16
  %29 = load i32, i32* @xra1403_direction_input, align 4
  %30 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %31 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 11
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @xra1403_direction_output, align 4
  %34 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %35 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 10
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @xra1403_get_direction, align 4
  %38 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %39 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 9
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @xra1403_get, align 4
  %42 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %43 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 8
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @xra1403_set, align 4
  %46 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %47 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @xra1403_dbg_show, align 4
  %50 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %51 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  store i32 %49, i32* %52, align 8
  %53 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %54 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 16, i32* %55, align 8
  %56 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %57 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %60 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 -1, i32* %61, align 8
  %62 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %63 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 1, i32* %64, align 4
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 0
  %67 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %68 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 5
  store i32* %66, i32** %69, align 8
  %70 = load i32, i32* @THIS_MODULE, align 4
  %71 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %72 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 8
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = call %struct.gpio_desc* @devm_regmap_init_spi(%struct.spi_device* %74, i32* @xra1403_regmap_cfg)
  %76 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %77 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %76, i32 0, i32 1
  store %struct.gpio_desc* %75, %struct.gpio_desc** %77, align 8
  %78 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %79 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %78, i32 0, i32 1
  %80 = load %struct.gpio_desc*, %struct.gpio_desc** %79, align 8
  %81 = call i64 @IS_ERR(%struct.gpio_desc* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %28
  %84 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %85 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %84, i32 0, i32 1
  %86 = load %struct.gpio_desc*, %struct.gpio_desc** %85, align 8
  %87 = call i32 @PTR_ERR(%struct.gpio_desc* %86)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %111

93:                                               ; preds = %28
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 0
  %96 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %97 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %96, i32 0, i32 0
  %98 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %99 = call i32 @devm_gpiochip_add_data(i32* %95, %struct.TYPE_2__* %97, %struct.xra1403* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %104 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %103, i32 0, i32 0
  %105 = call i32 (i32*, i8*, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %111

107:                                              ; preds = %93
  %108 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %109 = load %struct.xra1403*, %struct.xra1403** %4, align 8
  %110 = call i32 @spi_set_drvdata(%struct.spi_device* %108, %struct.xra1403* %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %102, %83, %13
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.xra1403* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.gpio_desc* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.TYPE_2__*, %struct.xra1403*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.xra1403*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
