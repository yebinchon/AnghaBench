; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_write_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_write_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.xadc = type { i32*, i32, i32 }

@XADC_THRESHOLD_VALUE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xadc_write_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.xadc*, align 8
  %18 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @xadc_get_threshold_offset(%struct.iio_chan_spec* %19, i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %23 = call %struct.xadc* @iio_priv(%struct.iio_dev* %22)
  store %struct.xadc* %23, %struct.xadc** %17, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* @XADC_THRESHOLD_VALUE_SHIFT, align 4
  %25 = load i32, i32* %14, align 4
  %26 = shl i32 %25, %24
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %14, align 4
  %31 = icmp sgt i32 %30, 65535
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %7
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %138

35:                                               ; preds = %29
  %36 = load %struct.xadc*, %struct.xadc** %17, align 8
  %37 = getelementptr inbounds %struct.xadc, %struct.xadc* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %13, align 4
  switch i32 %39, label %52 [
    i32 128, label %40
    i32 129, label %48
  ]

40:                                               ; preds = %35
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.xadc*, %struct.xadc** %17, align 8
  %43 = getelementptr inbounds %struct.xadc, %struct.xadc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %58

48:                                               ; preds = %35
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.xadc*, %struct.xadc** %17, align 8
  %51 = getelementptr inbounds %struct.xadc, %struct.xadc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %58

52:                                               ; preds = %35
  %53 = load %struct.xadc*, %struct.xadc** %17, align 8
  %54 = getelementptr inbounds %struct.xadc, %struct.xadc* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %138

58:                                               ; preds = %48, %40
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %60 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IIO_TEMP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %123

64:                                               ; preds = %58
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, 3
  store i32 %66, i32* %14, align 4
  %67 = load %struct.xadc*, %struct.xadc** %17, align 8
  %68 = getelementptr inbounds %struct.xadc, %struct.xadc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.xadc*, %struct.xadc** %17, align 8
  %75 = getelementptr inbounds %struct.xadc, %struct.xadc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load %struct.xadc*, %struct.xadc** %17, align 8
  %80 = getelementptr inbounds %struct.xadc, %struct.xadc* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = add i32 %82, 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 0, i32* %85, align 4
  br label %105

86:                                               ; preds = %64
  %87 = load %struct.xadc*, %struct.xadc** %17, align 8
  %88 = getelementptr inbounds %struct.xadc, %struct.xadc* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xadc*, %struct.xadc** %17, align 8
  %95 = getelementptr inbounds %struct.xadc, %struct.xadc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %93, %96
  %98 = load %struct.xadc*, %struct.xadc** %17, align 8
  %99 = getelementptr inbounds %struct.xadc, %struct.xadc* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = add i32 %101, 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %86, %78
  %106 = load %struct.xadc*, %struct.xadc** %17, align 8
  %107 = load i32, i32* %16, align 4
  %108 = add i32 %107, 4
  %109 = call i32 @XADC_REG_THRESHOLD(i32 %108)
  %110 = load %struct.xadc*, %struct.xadc** %17, align 8
  %111 = getelementptr inbounds %struct.xadc, %struct.xadc* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = add i32 %113, 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @_xadc_write_adc_reg(%struct.xadc* %106, i32 %109, i32 %117)
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %105
  br label %133

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %58
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.xadc*, %struct.xadc** %17, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @XADC_REG_THRESHOLD(i32 %128)
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @_xadc_write_adc_reg(%struct.xadc* %127, i32 %129, i32 %130)
  store i32 %131, i32* %18, align 4
  br label %132

132:                                              ; preds = %126, %123
  br label %133

133:                                              ; preds = %132, %121
  %134 = load %struct.xadc*, %struct.xadc** %17, align 8
  %135 = getelementptr inbounds %struct.xadc, %struct.xadc* %134, i32 0, i32 2
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %18, align 4
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %133, %52, %32
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @xadc_get_threshold_offset(%struct.iio_chan_spec*, i32) #1

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_xadc_write_adc_reg(%struct.xadc*, i32, i32) #1

declare dso_local i32 @XADC_REG_THRESHOLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
