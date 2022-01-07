; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_read_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_read_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mma8452_data = type { i32 }
%struct.mma8452_event_regs = type { i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@mma8452_time_step_us = common dso_local global i32** null, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@MMA8452_TRANSIENT_CFG = common dso_local global i32 0, align 4
@MMA8452_TRANSIENT_CFG_HPF_BYP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @mma8452_read_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_read_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mma8452_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.mma8452_event_regs*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %22 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %21)
  store %struct.mma8452_data* %22, %struct.mma8452_data** %16, align 8
  %23 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @mma8452_get_event_regs(%struct.mma8452_data* %23, %struct.iio_chan_spec* %24, i32 %25, %struct.mma8452_event_regs** %20)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %8, align 4
  br label %126

31:                                               ; preds = %7
  %32 = load i32, i32* %13, align 4
  switch i32 %32, label %123 [
    i32 128, label %33
    i32 129, label %53
    i32 130, label %93
  ]

33:                                               ; preds = %31
  %34 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %35 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mma8452_event_regs*, %struct.mma8452_event_regs** %20, align 8
  %38 = getelementptr inbounds %struct.mma8452_event_regs, %struct.mma8452_event_regs* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(i32 %36, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %17, align 4
  store i32 %44, i32* %8, align 4
  br label %126

45:                                               ; preds = %33
  %46 = load i32, i32* %17, align 4
  %47 = load %struct.mma8452_event_regs*, %struct.mma8452_event_regs** %20, align 8
  %48 = getelementptr inbounds %struct.mma8452_event_regs, %struct.mma8452_event_regs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = load i32*, i32** %14, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %52, i32* %8, align 4
  br label %126

53:                                               ; preds = %31
  %54 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %55 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mma8452_event_regs*, %struct.mma8452_event_regs** %20, align 8
  %58 = getelementptr inbounds %struct.mma8452_event_regs, %struct.mma8452_event_regs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @i2c_smbus_read_byte_data(i32 %56, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %8, align 4
  br label %126

65:                                               ; preds = %53
  %66 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %67 = call i32 @mma8452_get_power_mode(%struct.mma8452_data* %66)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %8, align 4
  br label %126

72:                                               ; preds = %65
  %73 = load i32, i32* %17, align 4
  %74 = load i32**, i32*** @mma8452_time_step_us, align 8
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %80 = call i64 @mma8452_get_odr_index(%struct.mma8452_data* %79)
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %73, %82
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* @USEC_PER_SEC, align 4
  %86 = sdiv i32 %84, %85
  %87 = load i32*, i32** %14, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @USEC_PER_SEC, align 4
  %90 = srem i32 %88, %89
  %91 = load i32*, i32** %15, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %92, i32* %8, align 4
  br label %126

93:                                               ; preds = %31
  %94 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %95 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MMA8452_TRANSIENT_CFG, align 4
  %98 = call i32 @i2c_smbus_read_byte_data(i32 %96, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %8, align 4
  br label %126

103:                                              ; preds = %93
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @MMA8452_TRANSIENT_CFG_HPF_BYP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32*, i32** %14, align 8
  store i32 0, i32* %109, align 4
  %110 = load i32*, i32** %15, align 8
  store i32 0, i32* %110, align 4
  br label %121

111:                                              ; preds = %103
  %112 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @mma8452_read_hp_filter(%struct.mma8452_data* %112, i32* %113, i32* %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %17, align 4
  store i32 %119, i32* %8, align 4
  br label %126

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %108
  %122 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %122, i32* %8, align 4
  br label %126

123:                                              ; preds = %31
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %123, %121, %118, %101, %72, %70, %63, %45, %43, %29
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mma8452_get_event_regs(%struct.mma8452_data*, %struct.iio_chan_spec*, i32, %struct.mma8452_event_regs**) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @mma8452_get_power_mode(%struct.mma8452_data*) #1

declare dso_local i64 @mma8452_get_odr_index(%struct.mma8452_data*) #1

declare dso_local i32 @mma8452_read_hp_filter(%struct.mma8452_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
