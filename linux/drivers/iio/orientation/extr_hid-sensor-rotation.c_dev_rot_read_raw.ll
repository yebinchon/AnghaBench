; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-rotation.c_dev_rot_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-rotation.c_dev_rot_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.dev_rot_state = type { i32*, i32, i32, i32, i32, i32 }

@IIO_VAL_INT_MULTIPLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*, i32*, i64)* @dev_rot_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_rot_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dev_rot_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %18 = call %struct.dev_rot_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.dev_rot_state* %18, %struct.dev_rot_state** %14, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %22, align 4
  %23 = load i64, i64* %13, align 8
  switch i64 %23, label %89 [
    i64 130, label %24
    i64 128, label %53
    i64 131, label %67
    i64 129, label %73
    i64 132, label %81
  ]

24:                                               ; preds = %6
  %25 = load i32, i32* %10, align 4
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load %struct.dev_rot_state*, %struct.dev_rot_state** %14, align 8
  %33 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %16, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load i32, i32* @IIO_VAL_INT_MULTIPLE, align 4
  store i32 %47, i32* %15, align 4
  %48 = load i32*, i32** %12, align 8
  store i32 4, i32* %48, align 4
  br label %52

49:                                               ; preds = %24
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %92

53:                                               ; preds = %6
  %54 = load %struct.dev_rot_state*, %struct.dev_rot_state** %14, align 8
  %55 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.dev_rot_state*, %struct.dev_rot_state** %14, align 8
  %60 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.dev_rot_state*, %struct.dev_rot_state** %14, align 8
  %65 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %7, align 4
  br label %94

67:                                               ; preds = %6
  %68 = load %struct.dev_rot_state*, %struct.dev_rot_state** %14, align 8
  %69 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %72, i32* %7, align 4
  br label %94

73:                                               ; preds = %6
  %74 = load %struct.dev_rot_state*, %struct.dev_rot_state** %14, align 8
  %75 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %74, i32 0, i32 5
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = call i32 @hid_sensor_read_samp_freq_value(i32* %75, i32* %77, i32* %79)
  store i32 %80, i32* %15, align 4
  br label %92

81:                                               ; preds = %6
  %82 = load %struct.dev_rot_state*, %struct.dev_rot_state** %14, align 8
  %83 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %82, i32 0, i32 5
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = call i32 @hid_sensor_read_raw_hyst_value(i32* %83, i32* %85, i32* %87)
  store i32 %88, i32* %15, align 4
  br label %92

89:                                               ; preds = %6
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %89, %81, %73, %52
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %67, %53
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local %struct.dev_rot_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_read_samp_freq_value(i32*, i32*, i32*) #1

declare dso_local i32 @hid_sensor_read_raw_hyst_value(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
