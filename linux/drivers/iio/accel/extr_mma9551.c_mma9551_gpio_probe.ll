; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.gpio_desc = type { i32 }
%struct.mma9551_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@MMA9551_GPIO_COUNT = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"acpi gpio get index failed\0A\00", align 1
@mma9551_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@MMA9551_IRQ_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"request irq %d failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"gpio resource, no:%d irq:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @mma9551_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9551_gpio_probe(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mma9551_data*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.mma9551_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.mma9551_data* %10, %struct.mma9551_data** %7, align 8
  %11 = load %struct.mma9551_data*, %struct.mma9551_data** %7, align 8
  %12 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %87, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MMA9551_GPIO_COUNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %90

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GPIOD_IN, align 4
  %23 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %20, i32* null, i32 %21, i32 %22)
  store %struct.gpio_desc* %23, %struct.gpio_desc** %4, align 8
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %25 = call i64 @IS_ERR(%struct.gpio_desc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %31 = call i32 @PTR_ERR(%struct.gpio_desc* %30)
  store i32 %31, i32* %2, align 4
  br label %91

32:                                               ; preds = %19
  %33 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %34 = call i32 @gpiod_to_irq(%struct.gpio_desc* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.mma9551_data*, %struct.mma9551_data** %7, align 8
  %42 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = load %struct.mma9551_data*, %struct.mma9551_data** %7, align 8
  %49 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @mma9551_event_handler, align 4
  %56 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %57 = load i32, i32* @IRQF_ONESHOT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MMA9551_IRQ_NAME, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %61 = call i32 @devm_request_threaded_irq(%struct.device* %47, i32 %54, i32* null, i32 %55, i32 %58, i32 %59, %struct.iio_dev* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %39
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load %struct.mma9551_data*, %struct.mma9551_data** %7, align 8
  %67 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %91

75:                                               ; preds = %39
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %78 = call i32 @desc_to_gpio(%struct.gpio_desc* %77)
  %79 = load %struct.mma9551_data*, %struct.mma9551_data** %7, align 8
  %80 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %85)
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %15

90:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %64, %37, %27
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.mma9551_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
