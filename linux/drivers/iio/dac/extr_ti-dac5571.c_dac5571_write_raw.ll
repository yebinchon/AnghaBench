; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.dac5571_data = type { i32*, i32 (%struct.dac5571_data*, i64, i32)*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @dac5571_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac5571_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dac5571_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.dac5571_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.dac5571_data* %15, %struct.dac5571_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %81 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %19 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %84

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %32 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = icmp sge i32 %30, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %29
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %84

44:                                               ; preds = %38
  %45 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %46 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %84

52:                                               ; preds = %44
  %53 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %54 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %53, i32 0, i32 2
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %57 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %56, i32 0, i32 1
  %58 = load i32 (%struct.dac5571_data*, i64, i32)*, i32 (%struct.dac5571_data*, i64, i32)** %57, align 8
  %59 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %60 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %61 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 %58(%struct.dac5571_data* %59, i64 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %70 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %73 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %68, i32* %75, align 4
  br label %76

76:                                               ; preds = %67, %52
  %77 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %78 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %6, align 4
  br label %84

81:                                               ; preds = %5
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %76, %49, %41, %28
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.dac5571_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
