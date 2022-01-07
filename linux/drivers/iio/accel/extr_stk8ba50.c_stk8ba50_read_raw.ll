; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stk8ba50_data = type { i64, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@STK8BA50_MODE_NORMAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STK8BA50_MODE_SUSPEND = common dso_local global i32 0, align 4
@STK8BA50_DATA_SHIFT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@stk8ba50_scale_table = common dso_local global %struct.TYPE_3__* null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@stk8ba50_samp_freq_table = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @stk8ba50_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8ba50_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stk8ba50_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.stk8ba50_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.stk8ba50_data* %15, %struct.stk8ba50_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %91 [
    i64 130, label %17
    i64 128, label %69
    i64 129, label %80
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
  br label %94

24:                                               ; preds = %17
  %25 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %26 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %29 = load i32, i32* @STK8BA50_MODE_NORMAL, align 4
  %30 = call i32 @stk8ba50_set_power(%struct.stk8ba50_data* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %35 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %94

39:                                               ; preds = %24
  %40 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @stk8ba50_read_accel(%struct.stk8ba50_data* %40, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %49 = load i32, i32* @STK8BA50_MODE_SUSPEND, align 4
  %50 = call i32 @stk8ba50_set_power(%struct.stk8ba50_data* %48, i32 %49)
  %51 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %52 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %94

56:                                               ; preds = %39
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @STK8BA50_DATA_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = call i32 @sign_extend32(i32 %59, i32 9)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %63 = load i32, i32* @STK8BA50_MODE_SUSPEND, align 4
  %64 = call i32 @stk8ba50_set_power(%struct.stk8ba50_data* %62, i32 %63)
  %65 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %66 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %68, i32* %6, align 4
  br label %94

69:                                               ; preds = %5
  %70 = load i32*, i32** %9, align 8
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stk8ba50_scale_table, align 8
  %72 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %73 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %79, i32* %6, align 4
  br label %94

80:                                               ; preds = %5
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stk8ba50_samp_freq_table, align 8
  %82 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %12, align 8
  %83 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %10, align 8
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %90, i32* %6, align 4
  br label %94

91:                                               ; preds = %5
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %80, %69, %56, %47, %33, %21
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.stk8ba50_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stk8ba50_set_power(%struct.stk8ba50_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @stk8ba50_read_accel(%struct.stk8ba50_data*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
