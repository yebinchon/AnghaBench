; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_sps30_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_sps30_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.sps30_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @sps30_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sps30_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sps30_state*, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.sps30_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.sps30_state* %16, %struct.sps30_state** %12, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %14, align 4
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %93 [
    i64 134, label %20
    i64 133, label %75
  ]

20:                                               ; preds = %5
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %72 [
    i32 132, label %24
  ]

24:                                               ; preds = %20
  %25 = load %struct.sps30_state*, %struct.sps30_state** %12, align 8
  %26 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %47 [
    i32 131, label %31
    i32 129, label %35
    i32 128, label %39
    i32 130, label %43
  ]

31:                                               ; preds = %24
  %32 = load %struct.sps30_state*, %struct.sps30_state** %12, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %34 = call i32 @sps30_do_meas(%struct.sps30_state* %32, i32* %33, i32 1)
  store i32 %34, i32* %14, align 4
  br label %47

35:                                               ; preds = %24
  %36 = load %struct.sps30_state*, %struct.sps30_state** %12, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %38 = call i32 @sps30_do_meas(%struct.sps30_state* %36, i32* %37, i32 2)
  store i32 %38, i32* %14, align 4
  br label %47

39:                                               ; preds = %24
  %40 = load %struct.sps30_state*, %struct.sps30_state** %12, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %42 = call i32 @sps30_do_meas(%struct.sps30_state* %40, i32* %41, i32 3)
  store i32 %42, i32* %14, align 4
  br label %47

43:                                               ; preds = %24
  %44 = load %struct.sps30_state*, %struct.sps30_state** %12, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %46 = call i32 @sps30_do_meas(%struct.sps30_state* %44, i32* %45, i32 4)
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %24, %43, %39, %35, %31
  %48 = load %struct.sps30_state*, %struct.sps30_state** %12, align 8
  %49 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %96

55:                                               ; preds = %47
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 100
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %67, 100
  %69 = mul nsw i32 %68, 10000
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %71, i32* %6, align 4
  br label %96

72:                                               ; preds = %20
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %96

75:                                               ; preds = %5
  %76 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %77 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %90 [
    i32 132, label %79
  ]

79:                                               ; preds = %75
  %80 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %81 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %87 [
    i32 131, label %83
    i32 129, label %83
    i32 128, label %83
    i32 130, label %83
  ]

83:                                               ; preds = %79, %79, %79, %79
  %84 = load i32*, i32** %9, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %10, align 8
  store i32 10000, i32* %85, align 4
  %86 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %86, i32* %6, align 4
  br label %96

87:                                               ; preds = %79
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %96

90:                                               ; preds = %75
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %96

93:                                               ; preds = %5
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %90, %87, %83, %72, %55, %53
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local %struct.sps30_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sps30_do_meas(%struct.sps30_state*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
