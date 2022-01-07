; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.kxcjk1013_data = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@KXCJK1013_scale_table = common dso_local global %struct.TYPE_2__* null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @kxcjk1013_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.kxcjk1013_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.kxcjk1013_data* %15, %struct.kxcjk1013_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %92 [
    i64 130, label %17
    i64 128, label %69
    i64 129, label %80
  ]

17:                                               ; preds = %5
  %18 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %19 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @iio_buffer_enabled(%struct.iio_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  br label %59

27:                                               ; preds = %17
  %28 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %29 = call i32 @kxcjk1013_set_power_state(%struct.kxcjk1013_data* %28, i32 1)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %34 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %95

37:                                               ; preds = %27
  %38 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kxcjk1013_get_acc_reg(%struct.kxcjk1013_data* %38, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %47 = call i32 @kxcjk1013_set_power_state(%struct.kxcjk1013_data* %46, i32 0)
  %48 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %49 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %95

52:                                               ; preds = %37
  %53 = load i32, i32* %13, align 4
  %54 = ashr i32 %53, 4
  %55 = call i32 @sign_extend32(i32 %54, i32 11)
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %58 = call i32 @kxcjk1013_set_power_state(%struct.kxcjk1013_data* %57, i32 0)
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %52, %24
  %60 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %61 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %95

67:                                               ; preds = %59
  %68 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %68, i32* %6, align 4
  br label %95

69:                                               ; preds = %5
  %70 = load i32*, i32** %9, align 8
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @KXCJK1013_scale_table, align 8
  %72 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %73 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %79, i32* %6, align 4
  br label %95

80:                                               ; preds = %5
  %81 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %82 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %81, i32 0, i32 1
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @kxcjk1013_get_odr(%struct.kxcjk1013_data* %84, i32* %85, i32* %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %89 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %6, align 4
  br label %95

92:                                               ; preds = %5
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %80, %69, %67, %65, %45, %32
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @kxcjk1013_set_power_state(%struct.kxcjk1013_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kxcjk1013_get_acc_reg(%struct.kxcjk1013_data*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @kxcjk1013_get_odr(%struct.kxcjk1013_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
