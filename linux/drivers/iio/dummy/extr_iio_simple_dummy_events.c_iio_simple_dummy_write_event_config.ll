; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy_events.c_iio_simple_dummy_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy_events.c_iio_simple_dummy_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.iio_dummy_state = type { i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_simple_dummy_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iio_dummy_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.iio_dummy_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.iio_dummy_state* %14, %struct.iio_dummy_state** %12, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %56 [
    i32 128, label %18
    i32 132, label %36
    i32 129, label %46
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %32 [
    i32 130, label %20
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %12, align 8
  %27 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %60

31:                                               ; preds = %24
  br label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %60

35:                                               ; preds = %31
  br label %59

36:                                               ; preds = %5
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %42 [
    i32 130, label %38
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %12, align 8
  %41 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %60

45:                                               ; preds = %38
  br label %59

46:                                               ; preds = %5
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %52 [
    i32 131, label %48
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %12, align 8
  %51 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %48
  br label %59

56:                                               ; preds = %5
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %60

59:                                               ; preds = %55, %45, %35
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %56, %52, %42, %32, %28
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.iio_dummy_state* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
