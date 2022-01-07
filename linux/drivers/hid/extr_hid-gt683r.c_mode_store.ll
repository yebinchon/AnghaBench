; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_device = type { i32 }
%struct.gt683r_led = type { i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@GT683R_LED_NORMAL = common dso_local global i32 0, align 4
@GT683R_LED_AUDIO = common dso_local global i32 0, align 4
@GT683R_LED_BREATHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_device*, align 8
  %12 = alloca %struct.gt683r_led*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hid_device* @to_hid_device(i32 %15)
  store %struct.hid_device* %16, %struct.hid_device** %11, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %11, align 8
  %18 = call %struct.gt683r_led* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.gt683r_led* %18, %struct.gt683r_led** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtou8(i8* %19, i32 10, i32* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %58

28:                                               ; preds = %22
  %29 = load %struct.gt683r_led*, %struct.gt683r_led** %12, align 8
  %30 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @GT683R_LED_NORMAL, align 4
  %36 = load %struct.gt683r_led*, %struct.gt683r_led** %12, align 8
  %37 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %50

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @GT683R_LED_AUDIO, align 4
  %43 = load %struct.gt683r_led*, %struct.gt683r_led** %12, align 8
  %44 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @GT683R_LED_BREATHING, align 4
  %47 = load %struct.gt683r_led*, %struct.gt683r_led** %12, align 8
  %48 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.gt683r_led*, %struct.gt683r_led** %12, align 8
  %52 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.gt683r_led*, %struct.gt683r_led** %12, align 8
  %55 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %54, i32 0, i32 0
  %56 = call i32 @schedule_work(i32* %55)
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %50, %25
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local %struct.hid_device* @to_hid_device(i32) #1

declare dso_local %struct.gt683r_led* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
