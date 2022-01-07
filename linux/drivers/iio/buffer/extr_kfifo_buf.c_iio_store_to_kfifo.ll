; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c_iio_store_to_kfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c_iio_store_to_kfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32 }
%struct.iio_kfifo = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_buffer*, i8*)* @iio_store_to_kfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_store_to_kfifo(%struct.iio_buffer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_kfifo*, align 8
  store %struct.iio_buffer* %0, %struct.iio_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %9 = call %struct.iio_kfifo* @iio_to_kfifo(%struct.iio_buffer* %8)
  store %struct.iio_kfifo* %9, %struct.iio_kfifo** %7, align 8
  %10 = load %struct.iio_kfifo*, %struct.iio_kfifo** %7, align 8
  %11 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %10, i32 0, i32 0
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @kfifo_in(i32* %11, i8* %12, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.iio_kfifo* @iio_to_kfifo(%struct.iio_buffer*) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
