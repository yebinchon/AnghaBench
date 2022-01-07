; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7455_core.c_mma7455_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7455_core.c_mma7455_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.mma7455_data = type { %struct.regmap* }
%struct.iio_dev = type { i8*, i32, i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.device* }

@MMA7455_REG_WHOAMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unable to read reg\0A\00", align 1
@MMA7455_WHOAMI_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"device id mismatch\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mma7455_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mma7455_channels = common dso_local global i32 0, align 4
@mma7455_scan_masks = common dso_local global i32 0, align 4
@MMA7455_REG_MCTL = common dso_local global i32 0, align 4
@MMA7455_MCTL_MODE_MEASURE = common dso_local global i32 0, align 4
@mma7455_trigger_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to setup triggered buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unable to register device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mma7455_core_probe(%struct.device* %0, %struct.regmap* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mma7455_data*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.regmap* %1, %struct.regmap** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.regmap*, %struct.regmap** %6, align 8
  %13 = load i32, i32* @MMA7455_REG_WHOAMI, align 4
  %14 = call i32 @regmap_read(%struct.regmap* %12, i32 %13, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %96

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @MMA7455_WHOAMI_ID, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %96

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %31, i32 8)
  store %struct.iio_dev* %32, %struct.iio_dev** %9, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %34 = icmp ne %struct.iio_dev* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %96

38:                                               ; preds = %30
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %41 = call i32 @dev_set_drvdata(%struct.device* %39, %struct.iio_dev* %40)
  %42 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %43 = call %struct.mma7455_data* @iio_priv(%struct.iio_dev* %42)
  store %struct.mma7455_data* %43, %struct.mma7455_data** %8, align 8
  %44 = load %struct.regmap*, %struct.regmap** %6, align 8
  %45 = load %struct.mma7455_data*, %struct.mma7455_data** %8, align 8
  %46 = getelementptr inbounds %struct.mma7455_data, %struct.mma7455_data* %45, i32 0, i32 0
  store %struct.regmap* %44, %struct.regmap** %46, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 6
  store i32* @mma7455_info, i32** %48, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.device* %52, %struct.device** %55, align 8
  %56 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @mma7455_channels, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @mma7455_channels, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @mma7455_scan_masks, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.mma7455_data*, %struct.mma7455_data** %8, align 8
  %70 = getelementptr inbounds %struct.mma7455_data, %struct.mma7455_data* %69, i32 0, i32 0
  %71 = load %struct.regmap*, %struct.regmap** %70, align 8
  %72 = load i32, i32* @MMA7455_REG_MCTL, align 4
  %73 = load i32, i32* @MMA7455_MCTL_MODE_MEASURE, align 4
  %74 = call i32 @regmap_write(%struct.regmap* %71, i32 %72, i32 %73)
  %75 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %76 = load i32, i32* @mma7455_trigger_handler, align 4
  %77 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %75, i32* null, i32 %76, i32* null)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %38
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %96

84:                                               ; preds = %38
  %85 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %86 = call i32 @iio_device_register(%struct.iio_dev* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %93 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %89, %80, %35, %25, %17
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local %struct.mma7455_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
