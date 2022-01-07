; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-sysfs.c_iio_sysfs_trigger_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-sysfs.c_iio_sysfs_trigger_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_trigger = type { i32 }
%struct.iio_sysfs_trig = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @iio_sysfs_trigger_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iio_sysfs_trigger_poll(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_trigger*, align 8
  %10 = alloca %struct.iio_sysfs_trig*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.iio_trigger* @to_iio_trigger(%struct.device* %11)
  store %struct.iio_trigger* %12, %struct.iio_trigger** %9, align 8
  %13 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %14 = call %struct.iio_sysfs_trig* @iio_trigger_get_drvdata(%struct.iio_trigger* %13)
  store %struct.iio_sysfs_trig* %14, %struct.iio_sysfs_trig** %10, align 8
  %15 = load %struct.iio_sysfs_trig*, %struct.iio_sysfs_trig** %10, align 8
  %16 = getelementptr inbounds %struct.iio_sysfs_trig, %struct.iio_sysfs_trig* %15, i32 0, i32 0
  %17 = call i32 @irq_work_queue(i32* %16)
  %18 = load i64, i64* %8, align 8
  ret i64 %18
}

declare dso_local %struct.iio_trigger* @to_iio_trigger(%struct.device*) #1

declare dso_local %struct.iio_sysfs_trig* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local i32 @irq_work_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
