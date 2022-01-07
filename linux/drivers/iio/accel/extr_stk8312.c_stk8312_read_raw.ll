; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stk8312_data = type { i32, i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@STK8312_MODE_ACTIVE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@stk8312_scale_table = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@stk8312_samp_freq_table = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @stk8312_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8312_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stk8312_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.stk8312_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.stk8312_data* %15, %struct.stk8312_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %126 [
    i64 130, label %17
    i64 128, label %84
    i64 129, label %108
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_buffer_enabled(%struct.iio_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %129

24:                                               ; preds = %17
  %25 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %26 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %25, i32 0, i32 3
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %29 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %30 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @STK8312_MODE_ACTIVE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @stk8312_set_mode(%struct.stk8312_data* %28, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %39 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %38, i32 0, i32 3
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %129

42:                                               ; preds = %24
  %43 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @stk8312_read_accel(%struct.stk8312_data* %43, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %52 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %53 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @STK8312_MODE_ACTIVE, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @stk8312_set_mode(%struct.stk8312_data* %51, i32 %57)
  %59 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %60 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %59, i32 0, i32 3
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %6, align 4
  br label %129

63:                                               ; preds = %42
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @sign_extend32(i32 %64, i32 7)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %68 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %69 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @STK8312_MODE_ACTIVE, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = call i32 @stk8312_set_mode(%struct.stk8312_data* %67, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %76 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %75, i32 0, i32 3
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %129

82:                                               ; preds = %63
  %83 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %83, i32* %6, align 4
  br label %129

84:                                               ; preds = %5
  %85 = load i32**, i32*** @stk8312_scale_table, align 8
  %86 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %87 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %85, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32**, i32*** @stk8312_scale_table, align 8
  %97 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %98 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %96, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %107, i32* %6, align 4
  br label %129

108:                                              ; preds = %5
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stk8312_samp_freq_table, align 8
  %110 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %111 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stk8312_samp_freq_table, align 8
  %118 = load %struct.stk8312_data*, %struct.stk8312_data** %12, align 8
  %119 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %10, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %125, i32* %6, align 4
  br label %129

126:                                              ; preds = %5
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %126, %108, %84, %82, %80, %50, %37, %21
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local %struct.stk8312_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stk8312_set_mode(%struct.stk8312_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @stk8312_read_accel(%struct.stk8312_data*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
