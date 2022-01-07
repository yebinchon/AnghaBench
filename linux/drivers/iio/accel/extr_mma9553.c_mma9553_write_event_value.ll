; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_write_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_write_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mma9553_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MMA9553_REG_CONF_SPEED_STEP = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_STEPCOALESCE = common dso_local global i32 0, align 4
@MMA9553_MAX_ACTTHD = common dso_local global i32 0, align 4
@MMA9553_REG_CONF_ACTTHD = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @mma9553_write_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_write_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mma9553_data*, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %19 = call %struct.mma9553_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.mma9553_data* %19, %struct.mma9553_data** %16, align 8
  %20 = load i32, i32* %13, align 4
  switch i32 %20, label %88 [
    i32 129, label %21
    i32 130, label %53
  ]

21:                                               ; preds = %7
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %50 [
    i32 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %29, 255
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %91

34:                                               ; preds = %28
  %35 = load %struct.mma9553_data*, %struct.mma9553_data** %16, align 8
  %36 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.mma9553_data*, %struct.mma9553_data** %16, align 8
  %39 = load i32, i32* @MMA9553_REG_CONF_SPEED_STEP, align 4
  %40 = load %struct.mma9553_data*, %struct.mma9553_data** %16, align 8
  %41 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @MMA9553_MASK_CONF_STEPCOALESCE, align 4
  %45 = call i32 @mma9553_set_config(%struct.mma9553_data* %38, i32 %39, i32* %42, i32 %43, i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = load %struct.mma9553_data*, %struct.mma9553_data** %16, align 8
  %47 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %8, align 4
  br label %91

50:                                               ; preds = %21
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %91

53:                                               ; preds = %7
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %85 [
    i32 131, label %57
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @MMA9553_MAX_ACTTHD, align 4
  %63 = call i32 @MMA9553_ACTIVITY_THD_TO_SEC(i32 %62)
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %57
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %91

68:                                               ; preds = %60
  %69 = load %struct.mma9553_data*, %struct.mma9553_data** %16, align 8
  %70 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.mma9553_data*, %struct.mma9553_data** %16, align 8
  %73 = load i32, i32* @MMA9553_REG_CONF_ACTTHD, align 4
  %74 = load %struct.mma9553_data*, %struct.mma9553_data** %16, align 8
  %75 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @MMA9553_ACTIVITY_SEC_TO_THD(i32 %77)
  %79 = load i32, i32* @MMA9553_MASK_CONF_WORD, align 4
  %80 = call i32 @mma9553_set_config(%struct.mma9553_data* %72, i32 %73, i32* %76, i32 %78, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load %struct.mma9553_data*, %struct.mma9553_data** %16, align 8
  %82 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %8, align 4
  br label %91

85:                                               ; preds = %53
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %91

88:                                               ; preds = %7
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %85, %68, %65, %50, %34, %31
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.mma9553_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mma9553_set_config(%struct.mma9553_data*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @MMA9553_ACTIVITY_THD_TO_SEC(i32) #1

declare dso_local i32 @MMA9553_ACTIVITY_SEC_TO_THD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
