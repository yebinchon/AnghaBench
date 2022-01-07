; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_read_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_read_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.mma8452_data = type { i32 }
%struct.mma8452_event_regs = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @mma8452_read_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_read_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mma8452_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mma8452_event_regs*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.mma8452_data* %14, %struct.mma8452_data** %10, align 8
  %15 = load %struct.mma8452_data*, %struct.mma8452_data** %10, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @mma8452_get_event_regs(%struct.mma8452_data* %15, %struct.iio_chan_spec* %16, i32 %17, %struct.mma8452_event_regs** %12)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %55 [
    i32 129, label %25
    i32 128, label %28
  ]

25:                                               ; preds = %23
  %26 = load %struct.mma8452_data*, %struct.mma8452_data** %10, align 8
  %27 = call i32 @mma8452_freefall_mode_enabled(%struct.mma8452_data* %26)
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %23
  %29 = load %struct.mma8452_data*, %struct.mma8452_data** %10, align 8
  %30 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mma8452_event_regs*, %struct.mma8452_event_regs** %12, align 8
  %33 = getelementptr inbounds %struct.mma8452_event_regs, %struct.mma8452_event_regs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @i2c_smbus_read_byte_data(i32 %31, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %58

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mma8452_event_regs*, %struct.mma8452_event_regs** %12, align 8
  %46 = getelementptr inbounds %struct.mma8452_event_regs, %struct.mma8452_event_regs* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i32 @BIT(i64 %48)
  %50 = and i32 %41, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %23
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %40, %38, %25, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mma8452_get_event_regs(%struct.mma8452_data*, %struct.iio_chan_spec*, i32, %struct.mma8452_event_regs**) #1

declare dso_local i32 @mma8452_freefall_mode_enabled(%struct.mma8452_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
