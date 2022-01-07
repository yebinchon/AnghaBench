; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis_buffer.c_adis_cleanup_buffer_and_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis_buffer.c_adis_cleanup_buffer_and_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iio_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adis_cleanup_buffer_and_trigger(%struct.adis* %0, %struct.iio_dev* %1) #0 {
  %3 = alloca %struct.adis*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  store %struct.adis* %0, %struct.adis** %3, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %4, align 8
  %5 = load %struct.adis*, %struct.adis** %3, align 8
  %6 = getelementptr inbounds %struct.adis, %struct.adis* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.adis*, %struct.adis** %3, align 8
  %13 = call i32 @adis_remove_trigger(%struct.adis* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.adis*, %struct.adis** %3, align 8
  %16 = getelementptr inbounds %struct.adis, %struct.adis* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kfree(i32 %17)
  %19 = load %struct.adis*, %struct.adis** %3, align 8
  %20 = getelementptr inbounds %struct.adis, %struct.adis* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @kfree(i32 %21)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %24 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %23)
  ret void
}

declare dso_local i32 @adis_remove_trigger(%struct.adis*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
