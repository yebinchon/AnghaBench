; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c___iio_allocate_kfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c___iio_allocate_kfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_kfifo = type { i32 }
%struct.__kfifo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_kfifo*, i64, i32)* @__iio_allocate_kfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iio_allocate_kfifo(%struct.iio_kfifo* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_kfifo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iio_kfifo* %0, %struct.iio_kfifo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @roundup_pow_of_two(i32 %17)
  %19 = load i64, i64* @UINT_MAX, align 8
  %20 = load i64, i64* %6, align 8
  %21 = udiv i64 %19, %20
  %22 = icmp ugt i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %16
  %27 = load %struct.iio_kfifo*, %struct.iio_kfifo** %5, align 8
  %28 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.__kfifo*
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @__kfifo_alloc(%struct.__kfifo* %29, i32 %30, i64 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %23, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i32 @__kfifo_alloc(%struct.__kfifo*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
