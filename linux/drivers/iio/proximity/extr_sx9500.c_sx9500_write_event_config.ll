; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i64 }
%struct.sx9500_data = type { i32*, i32 }

@IIO_PROXIMITY = common dso_local global i64 0, align 8
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @sx9500_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sx9500_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.sx9500_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.sx9500_data* %15, %struct.sx9500_data** %12, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IIO_PROXIMITY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %21, %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %100

32:                                               ; preds = %25
  %33 = load %struct.sx9500_data*, %struct.sx9500_data** %12, align 8
  %34 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load %struct.sx9500_data*, %struct.sx9500_data** %12, align 8
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @sx9500_inc_chan_users(%struct.sx9500_data* %39, i64 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %95

47:                                               ; preds = %38
  %48 = load %struct.sx9500_data*, %struct.sx9500_data** %12, align 8
  %49 = call i32 @sx9500_inc_close_far_users(%struct.sx9500_data* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %79

53:                                               ; preds = %47
  br label %70

54:                                               ; preds = %32
  %55 = load %struct.sx9500_data*, %struct.sx9500_data** %12, align 8
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @sx9500_dec_chan_users(%struct.sx9500_data* %55, i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %95

63:                                               ; preds = %54
  %64 = load %struct.sx9500_data*, %struct.sx9500_data** %12, align 8
  %65 = call i32 @sx9500_dec_close_far_users(%struct.sx9500_data* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %79

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.sx9500_data*, %struct.sx9500_data** %12, align 8
  %73 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %76 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %71, i32* %78, align 4
  br label %95

79:                                               ; preds = %68, %52
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.sx9500_data*, %struct.sx9500_data** %12, align 8
  %84 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %85 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @sx9500_dec_chan_users(%struct.sx9500_data* %83, i64 %86)
  br label %94

88:                                               ; preds = %79
  %89 = load %struct.sx9500_data*, %struct.sx9500_data** %12, align 8
  %90 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %91 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @sx9500_inc_chan_users(%struct.sx9500_data* %89, i64 %92)
  br label %94

94:                                               ; preds = %88, %82
  br label %95

95:                                               ; preds = %94, %70, %62, %46
  %96 = load %struct.sx9500_data*, %struct.sx9500_data** %12, align 8
  %97 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %95, %29
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sx9500_inc_chan_users(%struct.sx9500_data*, i64) #1

declare dso_local i32 @sx9500_inc_close_far_users(%struct.sx9500_data*) #1

declare dso_local i32 @sx9500_dec_chan_users(%struct.sx9500_data*, i64) #1

declare dso_local i32 @sx9500_dec_close_far_users(%struct.sx9500_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
