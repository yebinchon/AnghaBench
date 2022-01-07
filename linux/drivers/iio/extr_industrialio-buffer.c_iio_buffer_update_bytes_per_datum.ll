; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_update_bytes_per_datum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_update_bytes_per_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_buffer = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.iio_buffer*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*, %struct.iio_buffer*)* @iio_buffer_update_bytes_per_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iio_buffer_update_bytes_per_datum(%struct.iio_dev* %0, %struct.iio_buffer* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.iio_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store %struct.iio_buffer* %1, %struct.iio_buffer** %4, align 8
  %6 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.iio_buffer*, i32)*, i32 (%struct.iio_buffer*, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.iio_buffer*, i32)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %15 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @iio_compute_scan_bytes(%struct.iio_dev* %14, i32 %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.iio_buffer*, i32)*, i32 (%struct.iio_buffer*, i32)** %25, align 8
  %27 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 %26(%struct.iio_buffer* %27, i32 %28)
  br label %30

30:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @iio_compute_scan_bytes(%struct.iio_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
