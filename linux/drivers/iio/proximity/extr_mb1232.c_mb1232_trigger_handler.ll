; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_mb1232.c_mb1232_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_mb1232.c_mb1232_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.mb1232_data = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mb1232_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb1232_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mb1232_data*, align 8
  %8 = alloca [8 x i64], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %10, %struct.iio_poll_func** %5, align 8
  %11 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %12 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %11, i32 0, i32 1
  %13 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.mb1232_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.mb1232_data* %15, %struct.mb1232_data** %7, align 8
  %16 = bitcast [8 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 64, i1 false)
  %17 = load %struct.mb1232_data*, %struct.mb1232_data** %7, align 8
  %18 = call i64 @mb1232_read_distance(%struct.mb1232_data* %17)
  %19 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  store i64 %18, i64* %19, align 16
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %21 = load i64, i64* %20, align 16
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %27 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %28 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %25, i64* %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %23
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iio_trigger_notify_done(i32 %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local %struct.mb1232_data* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mb1232_read_distance(%struct.mb1232_data*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i64*, i32) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
