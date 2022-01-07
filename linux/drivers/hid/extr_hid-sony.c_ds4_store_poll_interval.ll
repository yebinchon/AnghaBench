; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_ds4_store_poll_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_ds4_store_poll_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_device = type { i32 }
%struct.sony_sc = type { i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@DS4_BT_MAX_POLL_INTERVAL_MS = common dso_local global i64 0, align 8
@SONY_WORKER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ds4_store_poll_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ds4_store_poll_interval(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hid_device*, align 8
  %11 = alloca %struct.sony_sc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.hid_device* @to_hid_device(%struct.device* %14)
  store %struct.hid_device* %15, %struct.hid_device** %10, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %17 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %16)
  store %struct.sony_sc* %17, %struct.sony_sc** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtou8(i8* %18, i32 0, i64* %13)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %47

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @DS4_BT_MAX_POLL_INTERVAL_MS, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.sony_sc*, %struct.sony_sc** %11, align 8
  %33 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %32, i32 0, i32 0
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.sony_sc*, %struct.sony_sc** %11, align 8
  %38 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sony_sc*, %struct.sony_sc** %11, align 8
  %40 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %39, i32 0, i32 0
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.sony_sc*, %struct.sony_sc** %11, align 8
  %44 = load i32, i32* @SONY_WORKER_STATE, align 4
  %45 = call i32 @sony_schedule_work(%struct.sony_sc* %43, i32 %44)
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %31, %28, %21
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sony_schedule_work(%struct.sony_sc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
