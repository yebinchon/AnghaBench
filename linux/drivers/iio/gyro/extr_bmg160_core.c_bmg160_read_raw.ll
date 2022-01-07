; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.bmg160_data = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BMG160_TEMP_CENTER_VAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@bmg160_scale_table = common dso_local global %struct.TYPE_3__* null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bmg160_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bmg160_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.bmg160_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.bmg160_data* %16, %struct.bmg160_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %115 [
    i64 131, label %18
    i64 132, label %43
    i64 133, label %55
    i64 129, label %59
    i64 130, label %103
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %40 [
    i32 128, label %22
    i32 134, label %26
  ]

22:                                               ; preds = %18
  %23 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @bmg160_get_temp(%struct.bmg160_data* %23, i32* %24)
  store i32 %25, i32* %6, align 4
  br label %118

26:                                               ; preds = %18
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = call i32 @iio_buffer_enabled(%struct.iio_dev* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %118

33:                                               ; preds = %26
  %34 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @bmg160_get_axis(%struct.bmg160_data* %34, i32 %37, i32* %38)
  store i32 %39, i32* %6, align 4
  br label %118

40:                                               ; preds = %18
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %118

43:                                               ; preds = %5
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @BMG160_TEMP_CENTER_VAL, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %118

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %118

55:                                               ; preds = %5
  %56 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @bmg160_get_filter(%struct.bmg160_data* %56, i32* %57)
  store i32 %58, i32* %6, align 4
  br label %118

59:                                               ; preds = %5
  %60 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %61 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %100 [
    i32 128, label %63
    i32 134, label %66
  ]

63:                                               ; preds = %59
  %64 = load i32*, i32** %9, align 8
  store i32 500, i32* %64, align 4
  %65 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %65, i32* %6, align 4
  br label %118

66:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %94, %66
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmg160_scale_table, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %69)
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmg160_scale_table, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %80 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %72
  %84 = load i32*, i32** %9, align 8
  store i32 0, i32* %84, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmg160_scale_table, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %92, i32* %6, align 4
  br label %118

93:                                               ; preds = %72
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %67

97:                                               ; preds = %67
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %118

100:                                              ; preds = %59
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %118

103:                                              ; preds = %5
  %104 = load i32*, i32** %10, align 8
  store i32 0, i32* %104, align 4
  %105 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %106 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %105, i32 0, i32 0
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @bmg160_get_bw(%struct.bmg160_data* %108, i32* %109)
  store i32 %110, i32* %13, align 4
  %111 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %112 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %6, align 4
  br label %118

115:                                              ; preds = %5
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %115, %103, %100, %97, %83, %63, %55, %52, %48, %40, %33, %30, %22
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.bmg160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @bmg160_get_temp(%struct.bmg160_data*, i32*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @bmg160_get_axis(%struct.bmg160_data*, i32, i32*) #1

declare dso_local i32 @bmg160_get_filter(%struct.bmg160_data*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmg160_get_bw(%struct.bmg160_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
