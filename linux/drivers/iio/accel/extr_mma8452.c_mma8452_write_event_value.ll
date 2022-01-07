; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_write_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_write_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mma8452_data = type { i32 }
%struct.mma8452_event_regs = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@mma8452_time_step_us = common dso_local global i32** null, align 8
@MMA8452_TRANSIENT_CFG = common dso_local global i32 0, align 4
@MMA8452_TRANSIENT_CFG_HPF_BYP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @mma8452_write_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_write_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
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
  br label %132

31:                                               ; preds = %7
  %32 = load i32, i32* %13, align 4
  switch i32 %32, label %129 [
    i32 128, label %33
    i32 129, label %52
    i32 130, label %90
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.mma8452_event_regs*, %struct.mma8452_event_regs** %20, align 8
  %39 = getelementptr inbounds %struct.mma8452_event_regs, %struct.mma8452_event_regs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %132

45:                                               ; preds = %36
  %46 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %47 = load %struct.mma8452_event_regs*, %struct.mma8452_event_regs** %20, align 8
  %48 = getelementptr inbounds %struct.mma8452_event_regs, %struct.mma8452_event_regs* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @mma8452_change_config(%struct.mma8452_data* %46, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %132

52:                                               ; preds = %31
  %53 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %54 = call i32 @mma8452_get_power_mode(%struct.mma8452_data* %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %8, align 4
  br label %132

59:                                               ; preds = %52
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @USEC_PER_SEC, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32**, i32*** @mma8452_time_step_us, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %71 = call i64 @mma8452_get_odr_index(%struct.mma8452_data* %70)
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %64, %73
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %19, align 4
  %79 = icmp sgt i32 %78, 255
  br i1 %79, label %80, label %83

80:                                               ; preds = %77, %59
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %132

83:                                               ; preds = %77
  %84 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %85 = load %struct.mma8452_event_regs*, %struct.mma8452_event_regs** %20, align 8
  %86 = getelementptr inbounds %struct.mma8452_event_regs, %struct.mma8452_event_regs* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @mma8452_change_config(%struct.mma8452_data* %84, i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  br label %132

90:                                               ; preds = %31
  %91 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %92 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MMA8452_TRANSIENT_CFG, align 4
  %95 = call i32 @i2c_smbus_read_byte_data(i32 %93, i32 %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %8, align 4
  br label %132

100:                                              ; preds = %90
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %15, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @MMA8452_TRANSIENT_CFG_HPF_BYP, align 4
  %108 = load i32, i32* %18, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %18, align 4
  br label %124

110:                                              ; preds = %103, %100
  %111 = load i32, i32* @MMA8452_TRANSIENT_CFG_HPF_BYP, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %18, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %18, align 4
  %115 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @mma8452_set_hp_filter_frequency(%struct.mma8452_data* %115, i32 %116, i32 %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %8, align 4
  br label %132

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %106
  %125 = load %struct.mma8452_data*, %struct.mma8452_data** %16, align 8
  %126 = load i32, i32* @MMA8452_TRANSIENT_CFG, align 4
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @mma8452_change_config(%struct.mma8452_data* %125, i32 %126, i32 %127)
  store i32 %128, i32* %8, align 4
  br label %132

129:                                              ; preds = %31
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %129, %124, %121, %98, %83, %80, %57, %45, %42, %29
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mma8452_get_event_regs(%struct.mma8452_data*, %struct.iio_chan_spec*, i32, %struct.mma8452_event_regs**) #1

declare dso_local i32 @mma8452_change_config(%struct.mma8452_data*, i32, i32) #1

declare dso_local i32 @mma8452_get_power_mode(%struct.mma8452_data*) #1

declare dso_local i64 @mma8452_get_odr_index(%struct.mma8452_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @mma8452_set_hp_filter_frequency(%struct.mma8452_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
