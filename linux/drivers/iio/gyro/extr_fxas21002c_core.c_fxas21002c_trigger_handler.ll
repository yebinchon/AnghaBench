; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.fxas21002c_data = type { i32, i32, i32, i32 }

@FXAS21002C_REG_OUT_X_MSB = common dso_local global i32 0, align 4
@CHANNEL_SCAN_MAX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fxas21002c_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.fxas21002c_data*, align 8
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
  %15 = call %struct.fxas21002c_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.fxas21002c_data* %15, %struct.fxas21002c_data** %7, align 8
  %16 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %7, align 8
  %17 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %7, align 8
  %20 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FXAS21002C_REG_OUT_X_MSB, align 4
  %23 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %7, align 8
  %24 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CHANNEL_SCAN_MAX, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @regmap_bulk_read(i32 %21, i32 %22, i32 %25, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %43

34:                                               ; preds = %2
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %7, align 8
  %37 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %7, align 8
  %40 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %33
  %44 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %7, align 8
  %45 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @iio_trigger_notify_done(i32 %49)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %51
}

declare dso_local %struct.fxas21002c_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
