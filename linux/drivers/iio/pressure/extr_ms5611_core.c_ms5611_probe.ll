; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i8*, i32, i32, i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ms5611_state = type { i32*, i32*, i32*, i32 }

@chip_info_tbl = common dso_local global i32* null, align 8
@ms5611_avail_temp_osr = common dso_local global i32* null, align 8
@ms5611_avail_pressure_osr = common dso_local global i32* null, align 8
@ms5611_info = common dso_local global i32 0, align 4
@ms5611_channels = common dso_local global i32* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ms5611_scan_masks = common dso_local global i32 0, align 4
@ms5611_trigger_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to register iio device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ms5611_probe(%struct.iio_dev* %0, %struct.device* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ms5611_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.ms5611_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.ms5611_state* %13, %struct.ms5611_state** %11, align 8
  %14 = load %struct.ms5611_state*, %struct.ms5611_state** %11, align 8
  %15 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %14, i32 0, i32 3
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load i32*, i32** @chip_info_tbl, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load %struct.ms5611_state*, %struct.ms5611_state** %11, align 8
  %22 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** @ms5611_avail_temp_osr, align 8
  %24 = load i32*, i32** @ms5611_avail_temp_osr, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load %struct.ms5611_state*, %struct.ms5611_state** %11, align 8
  %30 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load i32*, i32** @ms5611_avail_pressure_osr, align 8
  %32 = load i32*, i32** @ms5611_avail_pressure_osr, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load %struct.ms5611_state*, %struct.ms5611_state** %11, align 8
  %38 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.device* %39, %struct.device** %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 5
  store i32* @ms5611_info, i32** %47, align 8
  %48 = load i32*, i32** @ms5611_channels, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load i32*, i32** @ms5611_channels, align 8
  %52 = call i32 @ARRAY_SIZE(i32* %51)
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @ms5611_scan_masks, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %62 = call i32 @ms5611_init(%struct.iio_dev* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %4
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %92

67:                                               ; preds = %4
  %68 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %69 = load i32, i32* @ms5611_trigger_handler, align 4
  %70 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %68, i32* null, i32 %69, i32* null)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %88

76:                                               ; preds = %67
  %77 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %78 = call i32 @iio_device_register(%struct.iio_dev* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %85

84:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %92

85:                                               ; preds = %81
  %86 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %87 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %86)
  br label %88

88:                                               ; preds = %85, %73
  %89 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %90 = call i32 @ms5611_fini(%struct.iio_dev* %89)
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %84, %65
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.ms5611_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ms5611_init(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @ms5611_fini(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
