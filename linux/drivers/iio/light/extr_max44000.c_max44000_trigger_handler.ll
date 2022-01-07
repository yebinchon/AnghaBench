; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, i32 }
%struct.max44000_data = type { i32, i32 }

@MAX44000_SCAN_INDEX_ALS = common dso_local global i32 0, align 4
@MAX44000_SCAN_INDEX_PRX = common dso_local global i32 0, align 4
@MAX44000_REG_PRX_DATA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max44000_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44000_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_poll_func*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.max44000_data*, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %14, %struct.iio_poll_func** %6, align 8
  %15 = load %struct.iio_poll_func*, %struct.iio_poll_func** %6, align 8
  %16 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %15, i32 0, i32 0
  %17 = load %struct.iio_dev*, %struct.iio_dev** %16, align 8
  store %struct.iio_dev* %17, %struct.iio_dev** %7, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.max44000_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.max44000_data* %19, %struct.max44000_data** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.max44000_data*, %struct.max44000_data** %8, align 8
  %21 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @MAX44000_SCAN_INDEX_ALS, align 4
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @test_bit(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.max44000_data*, %struct.max44000_data** %8, align 8
  %31 = call i32 @max44000_read_alsval(%struct.max44000_data* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %76

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %2
  %42 = load i32, i32* @MAX44000_SCAN_INDEX_PRX, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @test_bit(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.max44000_data*, %struct.max44000_data** %8, align 8
  %50 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MAX44000_REG_PRX_DATA, align 4
  %53 = call i32 @regmap_read(i32 %51, i32 %52, i32* %11)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %76

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %60
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %41
  %63 = load %struct.max44000_data*, %struct.max44000_data** %8, align 8
  %64 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %68 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %69 = call i32 @iio_get_time_ns(%struct.iio_dev* %68)
  %70 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %66, i32* %67, i32 %69)
  %71 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @iio_trigger_notify_done(i32 %73)
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %3, align 4
  br label %85

76:                                               ; preds = %56, %34
  %77 = load %struct.max44000_data*, %struct.max44000_data** %8, align 8
  %78 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @iio_trigger_notify_done(i32 %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %76, %62
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.max44000_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @max44000_read_alsval(%struct.max44000_data*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
