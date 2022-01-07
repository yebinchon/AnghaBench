; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-gpio.c_gpio_extcon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-gpio.c_gpio_extcon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.gpio_extcon_data = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXTCON_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@gpio_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_extcon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_extcon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_extcon_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gpio_extcon_data* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.gpio_extcon_data* %13, %struct.gpio_extcon_data** %4, align 8
  %14 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %15 = icmp ne %struct.gpio_extcon_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %115

19:                                               ; preds = %1
  %20 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %21 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EXTCON_NONE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %115

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load i32, i32* @GPIOD_IN, align 4
  %31 = call i32 @devm_gpiod_get(%struct.device* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %33 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %41 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %115

44:                                               ; preds = %28
  %45 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %46 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @gpiod_to_irq(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %115

53:                                               ; preds = %44
  %54 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %55 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @gpiod_is_active_low(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  store i64 %60, i64* %6, align 8
  br label %63

61:                                               ; preds = %53
  %62 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %66 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %65, i32 0, i32 0
  %67 = call i32 @devm_extcon_dev_allocate(%struct.device* %64, i64* %66)
  %68 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %69 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %71 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %115

80:                                               ; preds = %63
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %83 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @devm_extcon_dev_register(%struct.device* %81, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %115

90:                                               ; preds = %80
  %91 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %92 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %91, i32 0, i32 1
  %93 = call i32 @INIT_DELAYED_WORK(%struct.TYPE_2__* %92, i32 (i32*)* @gpio_extcon_work)
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @gpio_irq_handler, align 4
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %102 = call i32 @devm_request_any_context_irq(%struct.device* %94, i32 %95, i32 %96, i64 %97, i32 %100, %struct.gpio_extcon_data* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %115

107:                                              ; preds = %90
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %110 = call i32 @platform_set_drvdata(%struct.platform_device* %108, %struct.gpio_extcon_data* %109)
  %111 = load %struct.gpio_extcon_data*, %struct.gpio_extcon_data** %4, align 8
  %112 = getelementptr inbounds %struct.gpio_extcon_data, %struct.gpio_extcon_data* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call i32 @gpio_extcon_work(i32* %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %107, %105, %88, %75, %51, %39, %25, %16
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.gpio_extcon_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiod_to_irq(i32) #1

declare dso_local i64 @gpiod_is_active_low(i32) #1

declare dso_local i32 @devm_extcon_dev_allocate(%struct.device*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(%struct.TYPE_2__*, i32 (i32*)*) #1

declare dso_local i32 @gpio_extcon_work(i32*) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.device*, i32, i32, i64, i32, %struct.gpio_extcon_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_extcon_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
