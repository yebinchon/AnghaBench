; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32*, %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.kxsd9_state = type { i32, %struct.TYPE_6__*, i32, %struct.regmap*, %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@kxsd9_channels = common dso_local global %struct.TYPE_6__* null, align 8
@kxsd9_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@kxsd9_scan_masks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@kxsd9_reg_vdd = common dso_local global i32 0, align 4
@kxsd9_reg_iovdd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot get regulators\0A\00", align 1
@KXSD9_CTRL_C_FS_2G = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@kxsd9_trigger_handler = common dso_local global i32 0, align 4
@kxsd9_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"triggered buffer setup failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxsd9_common_probe(%struct.device* %0, %struct.regmap* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.kxsd9_state*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.regmap* %1, %struct.regmap** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 40)
  store %struct.iio_dev* %12, %struct.iio_dev** %8, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %129

18:                                               ; preds = %3
  %19 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %20 = call %struct.kxsd9_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.kxsd9_state* %20, %struct.kxsd9_state** %9, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %23 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %22, i32 0, i32 4
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.regmap*, %struct.regmap** %6, align 8
  %25 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %26 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %25, i32 0, i32 3
  store %struct.regmap* %24, %struct.regmap** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kxsd9_channels, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 6
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kxsd9_channels, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %30)
  %32 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.device* %37, %struct.device** %40, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 3
  store i32* @kxsd9_info, i32** %42, align 8
  %43 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @kxsd9_scan_masks, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %51 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %50, i32 0, i32 2
  %52 = call i32 @iio_read_mount_matrix(%struct.device* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %18
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %129

57:                                               ; preds = %18
  %58 = load i32, i32* @kxsd9_reg_vdd, align 4
  %59 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %60 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* @kxsd9_reg_iovdd, align 4
  %65 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %66 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %72 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %73)
  %75 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %76 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @devm_regulator_bulk_get(%struct.device* %70, i32 %74, %struct.TYPE_6__* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %57
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %129

85:                                               ; preds = %57
  %86 = load i32, i32* @KXSD9_CTRL_C_FS_2G, align 4
  %87 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %88 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %90 = call i32 @kxsd9_power_up(%struct.kxsd9_state* %89)
  %91 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %92 = load i32, i32* @iio_pollfunc_store_time, align 4
  %93 = load i32, i32* @kxsd9_trigger_handler, align 4
  %94 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %91, i32 %92, i32 %93, i32* @kxsd9_buffer_setup_ops)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %125

100:                                              ; preds = %85
  %101 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %102 = call i32 @iio_device_register(%struct.iio_dev* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %122

106:                                              ; preds = %100
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %109 = call i32 @dev_set_drvdata(%struct.device* %107, %struct.iio_dev* %108)
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = call i32 @pm_runtime_get_noresume(%struct.device* %110)
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 @pm_runtime_set_active(%struct.device* %112)
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @pm_runtime_enable(%struct.device* %114)
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %116, i32 2000)
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = call i32 @pm_runtime_use_autosuspend(%struct.device* %118)
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = call i32 @pm_runtime_put(%struct.device* %120)
  store i32 0, i32* %4, align 4
  br label %129

122:                                              ; preds = %105
  %123 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %124 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %123)
  br label %125

125:                                              ; preds = %122, %97
  %126 = load %struct.kxsd9_state*, %struct.kxsd9_state** %9, align 8
  %127 = call i32 @kxsd9_power_down(%struct.kxsd9_state* %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %106, %81, %55, %15
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.kxsd9_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @iio_read_mount_matrix(%struct.device*, i8*, i32*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @kxsd9_power_up(%struct.kxsd9_state*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @kxsd9_power_down(%struct.kxsd9_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
