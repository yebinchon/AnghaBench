; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.pms7003_state = type { i32, %struct.pms7003_frame }
%struct.pms7003_frame = type { i32 }

@CMD_READ_PASSIVE = common dso_local global i32 0, align 4
@PMS7003_PM1_OFFSET = common dso_local global i32 0, align 4
@PM1 = common dso_local global i64 0, align 8
@PMS7003_PM2P5_OFFSET = common dso_local global i32 0, align 4
@PM2P5 = common dso_local global i64 0, align 8
@PMS7003_PM10_OFFSET = common dso_local global i32 0, align 4
@PM10 = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pms7003_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pms7003_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.pms7003_state*, align 8
  %8 = alloca %struct.pms7003_frame*, align 8
  %9 = alloca [8 x i32], align 16
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
  %17 = call %struct.pms7003_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.pms7003_state* %17, %struct.pms7003_state** %7, align 8
  %18 = load %struct.pms7003_state*, %struct.pms7003_state** %7, align 8
  %19 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %18, i32 0, i32 1
  store %struct.pms7003_frame* %19, %struct.pms7003_frame** %8, align 8
  %20 = load %struct.pms7003_state*, %struct.pms7003_state** %7, align 8
  %21 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.pms7003_state*, %struct.pms7003_state** %7, align 8
  %24 = load i32, i32* @CMD_READ_PASSIVE, align 4
  %25 = call i32 @pms7003_do_cmd(%struct.pms7003_state* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.pms7003_state*, %struct.pms7003_state** %7, align 8
  %30 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %65

32:                                               ; preds = %2
  %33 = load %struct.pms7003_frame*, %struct.pms7003_frame** %8, align 8
  %34 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PMS7003_PM1_OFFSET, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @pms7003_get_pm(i32 %37)
  %39 = load i64, i64* @PM1, align 8
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %39
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pms7003_frame*, %struct.pms7003_frame** %8, align 8
  %42 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PMS7003_PM2P5_OFFSET, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @pms7003_get_pm(i32 %45)
  %47 = load i64, i64* @PM2P5, align 8
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %47
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pms7003_frame*, %struct.pms7003_frame** %8, align 8
  %50 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PMS7003_PM10_OFFSET, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @pms7003_get_pm(i32 %53)
  %55 = load i64, i64* @PM10, align 8
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %55
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pms7003_state*, %struct.pms7003_state** %7, align 8
  %58 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = call i32 @iio_get_time_ns(%struct.iio_dev* %62)
  %64 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %60, i32* %61, i32 %63)
  br label %65

65:                                               ; preds = %32, %28
  %66 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @iio_trigger_notify_done(i32 %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %70
}

declare dso_local %struct.pms7003_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pms7003_do_cmd(%struct.pms7003_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pms7003_get_pm(i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
