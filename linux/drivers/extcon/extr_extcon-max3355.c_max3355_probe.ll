; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max3355.c_max3355_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max3355.c_max3355_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.max3355_data = type { %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to get ID_OUT GPIO\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"maxim,shdn\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get SHDN# GPIO\0A\00", align 1
@max3355_cable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to translate ID_OUT GPIO to IRQ\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to request ID_OUT IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max3355_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3355_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max3355_data*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.max3355_data* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.max3355_data* %11, %struct.max3355_data** %4, align 8
  %12 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %13 = icmp ne %struct.max3355_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %127

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GPIOD_IN, align 4
  %21 = call %struct.gpio_desc* @devm_gpiod_get(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.gpio_desc* %21, %struct.gpio_desc** %5, align 8
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %23 = call i64 @IS_ERR(%struct.gpio_desc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %30 = call i32 @PTR_ERR(%struct.gpio_desc* %29)
  store i32 %30, i32* %2, align 4
  br label %127

31:                                               ; preds = %17
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %33 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %34 = getelementptr inbounds %struct.max3355_data, %struct.max3355_data* %33, i32 0, i32 0
  store %struct.gpio_desc* %32, %struct.gpio_desc** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %38 = call %struct.gpio_desc* @devm_gpiod_get(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store %struct.gpio_desc* %38, %struct.gpio_desc** %5, align 8
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %40 = call i64 @IS_ERR(%struct.gpio_desc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %47 = call i32 @PTR_ERR(%struct.gpio_desc* %46)
  store i32 %47, i32* %2, align 4
  br label %127

48:                                               ; preds = %31
  %49 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %50 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %51 = getelementptr inbounds %struct.max3355_data, %struct.max3355_data* %50, i32 0, i32 2
  store %struct.gpio_desc* %49, %struct.gpio_desc** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* @max3355_cable, align 4
  %55 = call %struct.gpio_desc* @devm_extcon_dev_allocate(i32* %53, i32 %54)
  %56 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %57 = getelementptr inbounds %struct.max3355_data, %struct.max3355_data* %56, i32 0, i32 1
  store %struct.gpio_desc* %55, %struct.gpio_desc** %57, align 8
  %58 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %59 = getelementptr inbounds %struct.max3355_data, %struct.max3355_data* %58, i32 0, i32 1
  %60 = load %struct.gpio_desc*, %struct.gpio_desc** %59, align 8
  %61 = call i64 @IS_ERR(%struct.gpio_desc* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %48
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %68 = getelementptr inbounds %struct.max3355_data, %struct.max3355_data* %67, i32 0, i32 1
  %69 = load %struct.gpio_desc*, %struct.gpio_desc** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.gpio_desc* %69)
  store i32 %70, i32* %2, align 4
  br label %127

71:                                               ; preds = %48
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %75 = getelementptr inbounds %struct.max3355_data, %struct.max3355_data* %74, i32 0, i32 1
  %76 = load %struct.gpio_desc*, %struct.gpio_desc** %75, align 8
  %77 = call i32 @devm_extcon_dev_register(i32* %73, %struct.gpio_desc* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %127

85:                                               ; preds = %71
  %86 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %87 = getelementptr inbounds %struct.max3355_data, %struct.max3355_data* %86, i32 0, i32 0
  %88 = load %struct.gpio_desc*, %struct.gpio_desc** %87, align 8
  %89 = call i32 @gpiod_to_irq(%struct.gpio_desc* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %127

97:                                               ; preds = %85
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @IRQF_ONESHOT, align 4
  %102 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %112 = call i32 @devm_request_threaded_irq(i32* %99, i32 %100, i32* null, i32 (i32, %struct.max3355_data*)* @max3355_id_irq, i32 %107, i32 %110, %struct.max3355_data* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %97
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %127

120:                                              ; preds = %97
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %123 = call i32 @platform_set_drvdata(%struct.platform_device* %121, %struct.max3355_data* %122)
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.max3355_data*, %struct.max3355_data** %4, align 8
  %126 = call i32 @max3355_id_irq(i32 %124, %struct.max3355_data* %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %120, %115, %92, %80, %63, %42, %25, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.max3355_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @devm_extcon_dev_allocate(i32*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(i32*, %struct.gpio_desc*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32 (i32, %struct.max3355_data*)*, i32, i32, %struct.max3355_data*) #1

declare dso_local i32 @max3355_id_irq(i32, %struct.max3355_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max3355_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
