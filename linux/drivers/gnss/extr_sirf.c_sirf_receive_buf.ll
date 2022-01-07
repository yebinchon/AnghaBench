; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.sirf_data = type { i32, i32, i64, i32, i32, %struct.gnss_device* }
%struct.gnss_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*, i8*, i64)* @sirf_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_receive_buf(%struct.serdev_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.serdev_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sirf_data*, align 8
  %8 = alloca %struct.gnss_device*, align 8
  %9 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %11 = call %struct.sirf_data* @serdev_device_get_drvdata(%struct.serdev_device* %10)
  store %struct.sirf_data* %11, %struct.sirf_data** %7, align 8
  %12 = load %struct.sirf_data*, %struct.sirf_data** %7, align 8
  %13 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %12, i32 0, i32 5
  %14 = load %struct.gnss_device*, %struct.gnss_device** %13, align 8
  store %struct.gnss_device* %14, %struct.gnss_device** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.sirf_data*, %struct.sirf_data** %7, align 8
  %16 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = load %struct.sirf_data*, %struct.sirf_data** %7, align 8
  %21 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.sirf_data*, %struct.sirf_data** %7, align 8
  %26 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.sirf_data*, %struct.sirf_data** %7, align 8
  %28 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %27, i32 0, i32 3
  %29 = call i32 @wake_up_interruptible(i32* %28)
  br label %30

30:                                               ; preds = %24, %19, %3
  %31 = load %struct.sirf_data*, %struct.sirf_data** %7, align 8
  %32 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.sirf_data*, %struct.sirf_data** %7, align 8
  %35 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.gnss_device*, %struct.gnss_device** %8, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @gnss_insert_raw(%struct.gnss_device* %39, i8* %40, i64 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %38, %30
  %44 = load %struct.sirf_data*, %struct.sirf_data** %7, align 8
  %45 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local %struct.sirf_data* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gnss_insert_raw(%struct.gnss_device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
