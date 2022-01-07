; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_config_device_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_config_device_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.bmi160_data = type { i32 }
%struct.device = type { i32 }

@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@BMI160_ACTIVE_HIGH = common dso_local global i32 0, align 4
@BMI160_EDGE_TRIGGERED = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid interrupt type 0x%x specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"drive-open-drain\00", align 1
@BMI160_NORMAL_WRITE_USLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @bmi160_config_device_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmi160_config_device_irq(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bmi160_data*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.bmi160_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.bmi160_data* %13, %struct.bmi160_data** %10, align 8
  %14 = load %struct.bmi160_data*, %struct.bmi160_data** %10, align 8
  %15 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device* @regmap_get_device(i32 %16)
  store %struct.device* %17, %struct.device** %11, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @BMI160_ACTIVE_HIGH, align 4
  %23 = load i32, i32* @BMI160_EDGE_TRIGGERED, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %9, align 4
  br label %52

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @BMI160_EDGE_TRIGGERED, align 4
  store i32 %30, i32* %9, align 4
  br label %51

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @BMI160_ACTIVE_HIGH, align 4
  store i32 %36, i32* %9, align 4
  br label %50

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %49

42:                                               ; preds = %37
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %65

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %29
  br label %52

52:                                               ; preds = %51, %21
  %53 = load %struct.device*, %struct.device** %11, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @of_property_read_bool(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %8, align 4
  %57 = load %struct.bmi160_data*, %struct.bmi160_data** %10, align 8
  %58 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @BMI160_NORMAL_WRITE_USLEEP, align 4
  %64 = call i32 @bmi160_config_pin(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %52, %42
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.bmi160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @bmi160_config_pin(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
