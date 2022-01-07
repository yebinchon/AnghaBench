; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_parse_dataframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_parse_dataframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_data = type { i32, i32, %struct.iio_dev** }
%struct.iio_dev = type { i32 }
%struct.ssp_sensor_data = type { i32 (%struct.iio_dev.0*, i8*, i32)* }
%struct.iio_dev.0 = type opaque

@SSP_SENSOR_MAX = common dso_local global i32 0, align 4
@SSP_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Mcu data frame1 error %d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no client for frame\0A\00", align 1
@ssp_offset_map = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Mcu data frame3 error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssp_data*, i8*, i32)* @ssp_parse_dataframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssp_parse_dataframe(%struct.ssp_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssp_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ssp_sensor_data*, align 8
  %11 = alloca %struct.iio_dev**, align 8
  store %struct.ssp_data* %0, %struct.ssp_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %13 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %12, i32 0, i32 2
  %14 = load %struct.iio_dev**, %struct.iio_dev*** %13, align 8
  store %struct.iio_dev** %14, %struct.iio_dev*** %11, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %121, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %122

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %121 [
    i32 132, label %27
    i32 131, label %95
    i32 130, label %107
    i32 133, label %111
    i32 128, label %115
    i32 129, label %118
  ]

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SSP_SENSOR_MAX, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %27
  %42 = load i32, i32* @SSP_DEV, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EPROTO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %132

47:                                               ; preds = %37
  %48 = load %struct.iio_dev**, %struct.iio_dev*** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %48, i64 %50
  %52 = load %struct.iio_dev*, %struct.iio_dev** %51, align 8
  %53 = icmp ne %struct.iio_dev* %52, null
  br i1 %53, label %54, label %84

54:                                               ; preds = %47
  %55 = load %struct.iio_dev**, %struct.iio_dev*** %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %55, i64 %57
  %59 = load %struct.iio_dev*, %struct.iio_dev** %58, align 8
  %60 = call %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev* %59)
  store %struct.ssp_sensor_data* %60, %struct.ssp_sensor_data** %10, align 8
  %61 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %10, align 8
  %62 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %61, i32 0, i32 0
  %63 = load i32 (%struct.iio_dev.0*, i8*, i32)*, i32 (%struct.iio_dev.0*, i8*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.iio_dev.0*, i8*, i32)* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %54
  %66 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %10, align 8
  %67 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %66, i32 0, i32 0
  %68 = load i32 (%struct.iio_dev.0*, i8*, i32)*, i32 (%struct.iio_dev.0*, i8*, i32)** %67, align 8
  %69 = load %struct.iio_dev**, %struct.iio_dev*** %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %69, i64 %71
  %73 = load %struct.iio_dev*, %struct.iio_dev** %72, align 8
  %74 = bitcast %struct.iio_dev* %73 to %struct.iio_dev.0*
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %80 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %68(%struct.iio_dev.0* %74, i8* %78, i32 %81)
  br label %83

83:                                               ; preds = %65, %54
  br label %87

84:                                               ; preds = %47
  %85 = load i32, i32* @SSP_DEV, align 4
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %83
  %88 = load i32*, i32** @ssp_offset_map, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %121

95:                                               ; preds = %19
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @ssp_print_mcu_debug(i8* %96, i32* %8, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i32, i32* @SSP_DEV, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %132

106:                                              ; preds = %95
  br label %121

107:                                              ; preds = %19
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %121

111:                                              ; preds = %19
  %112 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @ssp_handle_big_data(%struct.ssp_data* %112, i8* %113, i32* %8)
  br label %121

115:                                              ; preds = %19
  %116 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %117 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %121

118:                                              ; preds = %19
  %119 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %120 = call i32 @ssp_queue_ssp_refresh_task(%struct.ssp_data* %119, i32 0)
  br label %121

121:                                              ; preds = %19, %118, %115, %111, %107, %106, %87
  br label %15

122:                                              ; preds = %15
  %123 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %124 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = call i32 (...) @ktime_get_real_ns()
  %129 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %130 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %122
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %101, %41
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ssp_print_mcu_debug(i8*, i32*, i32) #1

declare dso_local i32 @ssp_handle_big_data(%struct.ssp_data*, i8*, i32*) #1

declare dso_local i32 @ssp_queue_ssp_refresh_task(%struct.ssp_data*, i32) #1

declare dso_local i32 @ktime_get_real_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
