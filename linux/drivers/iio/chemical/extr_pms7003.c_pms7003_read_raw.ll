; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.pms7003_state = type { i32, %struct.pms7003_frame }
%struct.pms7003_frame = type { i64 }

@CMD_READ_PASSIVE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @pms7003_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pms7003_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pms7003_state*, align 8
  %13 = alloca %struct.pms7003_frame*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.pms7003_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.pms7003_state* %16, %struct.pms7003_state** %12, align 8
  %17 = load %struct.pms7003_state*, %struct.pms7003_state** %12, align 8
  %18 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %17, i32 0, i32 1
  store %struct.pms7003_frame* %18, %struct.pms7003_frame** %13, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %55 [
    i64 129, label %20
  ]

20:                                               ; preds = %5
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %52 [
    i32 128, label %24
  ]

24:                                               ; preds = %20
  %25 = load %struct.pms7003_state*, %struct.pms7003_state** %12, align 8
  %26 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.pms7003_state*, %struct.pms7003_state** %12, align 8
  %29 = load i32, i32* @CMD_READ_PASSIVE, align 4
  %30 = call i32 @pms7003_do_cmd(%struct.pms7003_state* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.pms7003_state*, %struct.pms7003_state** %12, align 8
  %35 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %58

38:                                               ; preds = %24
  %39 = load %struct.pms7003_frame*, %struct.pms7003_frame** %13, align 8
  %40 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @pms7003_get_pm(i64 %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.pms7003_state*, %struct.pms7003_state** %12, align 8
  %49 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %58

52:                                               ; preds = %20
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %58

55:                                               ; preds = %5
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %52, %38, %33
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.pms7003_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pms7003_do_cmd(%struct.pms7003_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pms7003_get_pm(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
