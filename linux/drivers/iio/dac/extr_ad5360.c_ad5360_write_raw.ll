; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ad5360_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AD5360_CMD_WRITE_DATA = common dso_local global i32 0, align 4
@AD5360_CMD_WRITE_OFFSET = common dso_local global i32 0, align 4
@AD5360_CMD_WRITE_GAIN = common dso_local global i32 0, align 4
@AD5360_CMD_SPECIAL_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad5360_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5360_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5360_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad5360_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad5360_state* %16, %struct.ad5360_state** %12, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* %11, align 8
  switch i64 %22, label %121 [
    i64 128, label %23
    i64 131, label %45
    i64 130, label %67
    i64 129, label %89
  ]

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %125

33:                                               ; preds = %27
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = load i32, i32* @AD5360_CMD_WRITE_DATA, align 4
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ad5360_write(%struct.iio_dev* %34, i32 %35, i32 %38, i32 %39, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %125

45:                                               ; preds = %5
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %45
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %125

55:                                               ; preds = %49
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = load i32, i32* @AD5360_CMD_WRITE_OFFSET, align 4
  %58 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ad5360_write(%struct.iio_dev* %56, i32 %57, i32 %60, i32 %61, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %125

67:                                               ; preds = %5
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %67
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %125

77:                                               ; preds = %71
  %78 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %79 = load i32, i32* @AD5360_CMD_WRITE_GAIN, align 4
  %80 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %81 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %85 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ad5360_write(%struct.iio_dev* %78, i32 %79, i32 %82, i32 %83, i32 %87)
  store i32 %88, i32* %6, align 4
  br label %125

89:                                               ; preds = %5
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp sle i32 %90, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94, %89
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %125

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  %103 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %104 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 14
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load %struct.ad5360_state*, %struct.ad5360_state** %12, align 8
  %111 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %112 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ad5360_get_channel_vref_index(%struct.ad5360_state* %110, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %116 = load i32, i32* @AD5360_CMD_SPECIAL_FUNCTION, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @AD5360_REG_SF_OFS(i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @ad5360_write(%struct.iio_dev* %115, i32 %116, i32 %118, i32 %119, i32 0)
  store i32 %120, i32* %6, align 4
  br label %125

121:                                              ; preds = %5
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %122, %100, %97, %77, %74, %55, %52, %33, %30
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local %struct.ad5360_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad5360_write(%struct.iio_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @ad5360_get_channel_vref_index(%struct.ad5360_state*, i32) #1

declare dso_local i32 @AD5360_REG_SF_OFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
