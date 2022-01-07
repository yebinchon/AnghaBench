; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl3115.c_mpl3115_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl3115.c_mpl3115_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, i32 }
%struct.mpl3115_data = type { i32, i32 }

@MPL3115_OUT_PRESS = common dso_local global i32 0, align 4
@MPL3115_OUT_TEMP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpl3115_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl3115_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mpl3115_data*, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %12, %struct.iio_poll_func** %5, align 8
  %13 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %14 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %13, i32 0, i32 0
  %15 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  store %struct.iio_dev* %15, %struct.iio_dev** %6, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.mpl3115_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.mpl3115_data* %17, %struct.mpl3115_data** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.mpl3115_data*, %struct.mpl3115_data** %7, align 8
  %19 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mpl3115_data*, %struct.mpl3115_data** %7, align 8
  %22 = call i32 @mpl3115_request(%struct.mpl3115_data* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.mpl3115_data*, %struct.mpl3115_data** %7, align 8
  %27 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %86

29:                                               ; preds = %2
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %31 = call i32 @memset(i32* %30, i32 0, i32 64)
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @test_bit(i32 0, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %29
  %38 = load %struct.mpl3115_data*, %struct.mpl3115_data** %7, align 8
  %39 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MPL3115_OUT_PRESS, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %43
  %45 = call i32 @i2c_smbus_read_i2c_block_data(i32 %40, i32 %41, i32 3, i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.mpl3115_data*, %struct.mpl3115_data** %7, align 8
  %50 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %86

52:                                               ; preds = %37
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %29
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @test_bit(i32 1, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.mpl3115_data*, %struct.mpl3115_data** %7, align 8
  %63 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MPL3115_OUT_TEMP, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %67
  %69 = call i32 @i2c_smbus_read_i2c_block_data(i32 %64, i32 %65, i32 2, i32* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load %struct.mpl3115_data*, %struct.mpl3115_data** %7, align 8
  %74 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %86

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.mpl3115_data*, %struct.mpl3115_data** %7, align 8
  %79 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %83 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %84 = call i32 @iio_get_time_ns(%struct.iio_dev* %83)
  %85 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %81, i32* %82, i32 %84)
  br label %86

86:                                               ; preds = %77, %72, %48, %25
  %87 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @iio_trigger_notify_done(i32 %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %91
}

declare dso_local %struct.mpl3115_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mpl3115_request(%struct.mpl3115_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
