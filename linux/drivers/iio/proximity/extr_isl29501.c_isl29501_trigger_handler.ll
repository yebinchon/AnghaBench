; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i64*, i32 }
%struct.isl29501_private = type { i32 }

@ISL29501_DISTANCE_SCAN_INDEX = common dso_local global i32 0, align 4
@REG_DISTANCE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @isl29501_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.isl29501_private*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %11, %struct.iio_poll_func** %5, align 8
  %12 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %13 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %12, i32 0, i32 1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  store %struct.iio_dev* %14, %struct.iio_dev** %6, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.isl29501_private* @iio_priv(%struct.iio_dev* %15)
  store %struct.isl29501_private* %16, %struct.isl29501_private** %7, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %8, align 8
  %20 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 16, i1 false)
  %21 = load i32, i32* @ISL29501_DISTANCE_SCAN_INDEX, align 4
  %22 = load i64*, i64** %8, align 8
  %23 = call i64 @test_bit(i32 %21, i64* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.isl29501_private*, %struct.isl29501_private** %7, align 8
  %27 = load i32, i32* @REG_DISTANCE, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %29 = call i32 @isl29501_register_read(%struct.isl29501_private* %26, i32 %27, i32* %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %33 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %34 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %31, i32* %32, i32 %35)
  %37 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @iio_trigger_notify_done(i32 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local %struct.isl29501_private* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @isl29501_register_read(%struct.isl29501_private*, i32, i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
