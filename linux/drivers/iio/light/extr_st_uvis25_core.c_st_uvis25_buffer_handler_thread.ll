; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_buffer_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_buffer_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.st_uvis25_hw = type { i32, i32 }

@ST_UVIS25_REG_OUT_ADDR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @st_uvis25_buffer_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_uvis25_buffer_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iio_poll_func*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.st_uvis25_hw*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = call i32 @ALIGN(i32 4, i32 4)
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 4
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %17, %struct.iio_poll_func** %7, align 8
  %18 = load %struct.iio_poll_func*, %struct.iio_poll_func** %7, align 8
  %19 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %18, i32 0, i32 0
  %20 = load %struct.iio_dev*, %struct.iio_dev** %19, align 8
  store %struct.iio_dev* %20, %struct.iio_dev** %8, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %22 = call %struct.st_uvis25_hw* @iio_priv(%struct.iio_dev* %21)
  store %struct.st_uvis25_hw* %22, %struct.st_uvis25_hw** %9, align 8
  %23 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %9, align 8
  %24 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ST_UVIS25_REG_OUT_ADDR, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %15)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %34 = call i32 @iio_get_time_ns(%struct.iio_dev* %33)
  %35 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %32, i32* %15, i32 %34)
  br label %36

36:                                               ; preds = %31, %30
  %37 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %9, align 8
  %38 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @iio_trigger_notify_done(i32 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i32 %41
}

declare dso_local i32 @ALIGN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.st_uvis25_hw* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
