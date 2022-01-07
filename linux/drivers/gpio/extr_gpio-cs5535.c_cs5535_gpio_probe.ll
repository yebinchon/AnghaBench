; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_cs5535_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_cs5535_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.platform_device*, i32 }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }

@EIO = common dso_local global i32 0, align 4
@mask = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't fetch device resource info\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"can't request region\0A\00", align 1
@cs5535_gpio_chip = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"reserved resource region %pR\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"mask changed from 0x%08lX to 0x%08lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cs5535_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5535_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @EIO, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @mask, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_IO, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %4, align 8
  %13 = load %struct.resource*, %struct.resource** %4, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = call i32 @resource_size(%struct.resource* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @devm_request_region(i32* %22, i32 %25, i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %20
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %70

38:                                               ; preds = %20
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cs5535_gpio_chip, i32 0, i32 3), align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  store %struct.platform_device* %42, %struct.platform_device** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cs5535_gpio_chip, i32 0, i32 2), align 8
  %43 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cs5535_gpio_chip, i32 0, i32 1))
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = call i32 (i32*, i8*, ...) @dev_info(i32* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %46)
  %48 = load i32, i32* @mask, align 4
  %49 = and i32 %48, 528482303
  store i32 %49, i32* @mask, align 4
  %50 = load i32, i32* @mask, align 4
  %51 = and i32 %50, -268435457
  store i32 %51, i32* @mask, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @mask, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @mask, align 4
  %60 = call i32 (i32*, i8*, ...) @dev_info(i32* %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %38
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @devm_gpiochip_add_data(i32* %63, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cs5535_gpio_chip, i32 0, i32 0), %struct.TYPE_3__* @cs5535_gpio_chip)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %67, %33, %15
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_request_region(i32*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
