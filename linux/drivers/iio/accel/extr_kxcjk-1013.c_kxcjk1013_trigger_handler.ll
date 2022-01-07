; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.kxcjk1013_data = type { i32, i64, i32, i32 }

@KXCJK1013_REG_XOUT_L = common dso_local global i32 0, align 4
@AXIS_MAX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @kxcjk1013_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.kxcjk1013_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %10, %struct.iio_poll_func** %5, align 8
  %11 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %12 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %11, i32 0, i32 0
  %13 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.kxcjk1013_data* %15, %struct.kxcjk1013_data** %7, align 8
  %16 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %17 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %20 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @KXCJK1013_REG_XOUT_L, align 4
  %23 = load i32, i32* @AXIS_MAX, align 4
  %24 = mul nsw i32 %23, 2
  %25 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %26 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(i32 %21, i32 %22, i32 %24, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %31 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %30, i32 0, i32 2
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %45

36:                                               ; preds = %2
  %37 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %38 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %39 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %42 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %37, i64 %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %35
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @iio_trigger_notify_done(i32 %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i64, i32) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
