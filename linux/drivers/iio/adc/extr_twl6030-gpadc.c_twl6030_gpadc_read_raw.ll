; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_gpadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_gpadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.twl6030_gpadc_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [28 x i8] c"failed to start conversion\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @twl6030_gpadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_gpadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.twl6030_gpadc_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.twl6030_gpadc_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.twl6030_gpadc_data* %15, %struct.twl6030_gpadc_data** %11, align 8
  %16 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %11, align 8
  %17 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %11, align 8
  %20 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %23(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %11, align 8
  %32 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %88

35:                                               ; preds = %5
  %36 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %11, align 8
  %37 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %36, i32 0, i32 1
  %38 = call i32 @msecs_to_jiffies(i32 5000)
  %39 = call i64 @wait_for_completion_interruptible_timeout(i32* %37, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %88

45:                                               ; preds = %35
  %46 = load i64, i64* %13, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINTR, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %88

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %10, align 8
  switch i64 %53, label %86 [
    i64 128, label %54
    i64 129, label %70
  ]

54:                                               ; preds = %52
  %55 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %11, align 8
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @twl6030_gpadc_get_raw(%struct.twl6030_gpadc_data* %55, i32 %58, i32* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  br label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @IIO_VAL_INT, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  store i32 %69, i32* %12, align 4
  br label %87

70:                                               ; preds = %52
  %71 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %11, align 8
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %73 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @twl6030_gpadc_get_processed(%struct.twl6030_gpadc_data* %71, i32 %74, i32* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  br label %84

82:                                               ; preds = %70
  %83 = load i32, i32* @IIO_VAL_INT, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  store i32 %85, i32* %12, align 4
  br label %87

86:                                               ; preds = %52
  br label %87

87:                                               ; preds = %86, %84, %68
  br label %88

88:                                               ; preds = %87, %48, %42, %30
  %89 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %11, align 8
  %90 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %12, align 4
  ret i32 %92
}

declare dso_local %struct.twl6030_gpadc_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @twl6030_gpadc_get_raw(%struct.twl6030_gpadc_data*, i32, i32*) #1

declare dso_local i32 @twl6030_gpadc_get_processed(%struct.twl6030_gpadc_data*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
