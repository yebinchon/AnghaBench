; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.hmc5843_data = type { %struct.TYPE_4__*, i32, i32, %struct.regmap*, %struct.device* }
%struct.iio_dev = type { i8*, i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@hmc5843_chip_info_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@hmc5843_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@hmc5843_scan_masks = common dso_local global i32 0, align 4
@hmc5843_trigger_handler = common dso_local global i32 0, align 4
@HMC5843_MODE_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmc5843_common_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hmc5843_data*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %13, i32 32)
  store %struct.iio_dev* %14, %struct.iio_dev** %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %16 = icmp ne %struct.iio_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %103

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %23 = call i32 @dev_set_drvdata(%struct.device* %21, %struct.iio_dev* %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %25 = call %struct.hmc5843_data* @iio_priv(%struct.iio_dev* %24)
  store %struct.hmc5843_data* %25, %struct.hmc5843_data** %10, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.hmc5843_data*, %struct.hmc5843_data** %10, align 8
  %28 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %27, i32 0, i32 4
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = load %struct.hmc5843_data*, %struct.hmc5843_data** %10, align 8
  %31 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %30, i32 0, i32 3
  store %struct.regmap* %29, %struct.regmap** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hmc5843_chip_info_tbl, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = load %struct.hmc5843_data*, %struct.hmc5843_data** %10, align 8
  %37 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %36, i32 0, i32 0
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.hmc5843_data*, %struct.hmc5843_data** %10, align 8
  %39 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %38, i32 0, i32 2
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.hmc5843_data*, %struct.hmc5843_data** %10, align 8
  %43 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %42, i32 0, i32 1
  %44 = call i32 @iio_read_mount_matrix(%struct.device* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %20
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %103

49:                                               ; preds = %20
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store %struct.device* %50, %struct.device** %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 5
  store i32* @hmc5843_info, i32** %58, align 8
  %59 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.hmc5843_data*, %struct.hmc5843_data** %10, align 8
  %63 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 1
  store i32 4, i32* %70, align 8
  %71 = load i32, i32* @hmc5843_scan_masks, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.hmc5843_data*, %struct.hmc5843_data** %10, align 8
  %75 = call i32 @hmc5843_init(%struct.hmc5843_data* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %49
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %103

80:                                               ; preds = %49
  %81 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %82 = load i32, i32* @hmc5843_trigger_handler, align 4
  %83 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %81, i32* null, i32 %82, i32* null)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %97

87:                                               ; preds = %80
  %88 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %89 = call i32 @iio_device_register(%struct.iio_dev* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %94

93:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %103

94:                                               ; preds = %92
  %95 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %96 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %95)
  br label %97

97:                                               ; preds = %94, %86
  %98 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %99 = call %struct.hmc5843_data* @iio_priv(%struct.iio_dev* %98)
  %100 = load i32, i32* @HMC5843_MODE_SLEEP, align 4
  %101 = call i32 @hmc5843_set_mode(%struct.hmc5843_data* %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %97, %93, %78, %47, %17
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local %struct.hmc5843_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_read_mount_matrix(%struct.device*, i8*, i32*) #1

declare dso_local i32 @hmc5843_init(%struct.hmc5843_data*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @hmc5843_set_mode(%struct.hmc5843_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
