; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.iio_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_buffer*, %struct.iio_dev*)* @iio_buffer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_buffer_enable(%struct.iio_buffer* %0, %struct.iio_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_buffer*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  store %struct.iio_buffer* %0, %struct.iio_buffer** %4, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %5, align 8
  %6 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.iio_buffer*, %struct.iio_dev*)**
  %11 = load i32 (%struct.iio_buffer*, %struct.iio_dev*)*, i32 (%struct.iio_buffer*, %struct.iio_dev*)** %10, align 8
  %12 = icmp ne i32 (%struct.iio_buffer*, %struct.iio_dev*)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.iio_buffer*, %struct.iio_dev*)**
  %20 = load i32 (%struct.iio_buffer*, %struct.iio_dev*)*, i32 (%struct.iio_buffer*, %struct.iio_dev*)** %19, align 8
  %21 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = call i32 %20(%struct.iio_buffer* %21, %struct.iio_dev* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
