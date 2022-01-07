; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bmc150_accel_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bmc150_scale_info* }
%struct.bmc150_scale_info = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BMC150_ACCEL_TEMP_CENTER_VAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bmc150_accel_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bmc150_accel_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bmc150_scale_info*, align 8
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.bmc150_accel_data* %18, %struct.bmc150_accel_data** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %118 [
    i64 131, label %20
    i64 132, label %43
    i64 129, label %55
    i64 130, label %106
  ]

20:                                               ; preds = %5
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %40 [
    i32 128, label %24
    i32 133, label %28
  ]

24:                                               ; preds = %20
  %25 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @bmc150_accel_get_temp(%struct.bmc150_accel_data* %25, i32* %26)
  store i32 %27, i32* %6, align 4
  br label %121

28:                                               ; preds = %20
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = call i32 @iio_buffer_enabled(%struct.iio_dev* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %121

35:                                               ; preds = %28
  %36 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @bmc150_accel_get_axis(%struct.bmc150_accel_data* %36, %struct.iio_chan_spec* %37, i32* %38)
  store i32 %39, i32* %6, align 4
  br label %121

40:                                               ; preds = %20
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %121

43:                                               ; preds = %5
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @BMC150_ACCEL_TEMP_CENTER_VAL, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %121

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %121

55:                                               ; preds = %5
  %56 = load i32*, i32** %9, align 8
  store i32 0, i32* %56, align 4
  %57 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %58 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %103 [
    i32 128, label %60
    i32 133, label %63
  ]

60:                                               ; preds = %55
  %61 = load i32*, i32** %10, align 8
  store i32 500000, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %62, i32* %6, align 4
  br label %121

63:                                               ; preds = %55
  %64 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %65 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.bmc150_scale_info*, %struct.bmc150_scale_info** %67, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.bmc150_scale_info* %68)
  store i32 %69, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %97, %63
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %76 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.bmc150_scale_info*, %struct.bmc150_scale_info** %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.bmc150_scale_info, %struct.bmc150_scale_info* %79, i64 %81
  store %struct.bmc150_scale_info* %82, %struct.bmc150_scale_info** %15, align 8
  %83 = load %struct.bmc150_scale_info*, %struct.bmc150_scale_info** %15, align 8
  %84 = getelementptr inbounds %struct.bmc150_scale_info, %struct.bmc150_scale_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %87 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %74
  %91 = load %struct.bmc150_scale_info*, %struct.bmc150_scale_info** %15, align 8
  %92 = getelementptr inbounds %struct.bmc150_scale_info, %struct.bmc150_scale_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %95, i32* %6, align 4
  br label %121

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %70

100:                                              ; preds = %70
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %121

103:                                              ; preds = %55
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %121

106:                                              ; preds = %5
  %107 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %108 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %107, i32 0, i32 0
  %109 = call i32 @mutex_lock(i32* %108)
  %110 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @bmc150_accel_get_bw(%struct.bmc150_accel_data* %110, i32* %111, i32* %112)
  store i32 %113, i32* %13, align 4
  %114 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %115 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %6, align 4
  br label %121

118:                                              ; preds = %5
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %118, %106, %103, %100, %90, %60, %52, %48, %40, %35, %32, %24
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @bmc150_accel_get_temp(%struct.bmc150_accel_data*, i32*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @bmc150_accel_get_axis(%struct.bmc150_accel_data*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bmc150_scale_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmc150_accel_get_bw(%struct.bmc150_accel_data*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
