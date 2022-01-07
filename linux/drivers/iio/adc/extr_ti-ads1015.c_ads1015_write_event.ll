; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_write_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_write_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ads1015_data = type { i32*, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@ads1015_comp_queue = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @ads1015_write_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_write_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ads1015_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %22 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %21)
  store %struct.ads1015_data* %22, %struct.ads1015_data** %15, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %28 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %127 [
    i32 128, label %31
    i32 129, label %71
  ]

31:                                               ; preds = %7
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %16, align 4
  %34 = sub nsw i32 %33, 1
  %35 = shl i32 1, %34
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %16, align 4
  %40 = sub nsw i32 %39, 1
  %41 = shl i32 -1, %40
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %17, align 4
  br label %130

46:                                               ; preds = %37
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %53 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %51, i32* %59, align 4
  br label %70

60:                                               ; preds = %46
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %63 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %66 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %61, i32* %69, align 4
  br label %70

70:                                               ; preds = %60, %50
  br label %130

71:                                               ; preds = %7
  %72 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %73 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %72, i32 0, i32 3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %76 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @USEC_PER_SEC, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %87

87:                                               ; preds = %114, %71
  %88 = load i32, i32* %19, align 4
  %89 = load i32*, i32** @ads1015_comp_queue, align 8
  %90 = call i32 @ARRAY_SIZE(i32* %89)
  %91 = sub nsw i32 %90, 1
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %87
  %94 = load i64, i64* %18, align 8
  %95 = load i32*, i32** @ads1015_comp_queue, align 8
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @USEC_PER_SEC, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %103 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %101, %108
  %110 = sext i32 %109 to i64
  %111 = icmp sle i64 %94, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %93
  br label %117

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %19, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %19, align 4
  br label %87

117:                                              ; preds = %112, %87
  %118 = load i32, i32* %19, align 4
  %119 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %120 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %119, i32 0, i32 2
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %123 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  store i32 %118, i32* %126, align 4
  br label %130

127:                                              ; preds = %7
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %127, %117, %70, %43
  %131 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %132 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %17, align 4
  ret i32 %134
}

declare dso_local %struct.ads1015_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
