; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_src_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_src_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.wm831x_status = type { i32, i32 }

@led_src_texts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wm831x_status_src_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wm831x_status_src_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.led_classdev*, align 8
  %10 = alloca %struct.wm831x_status*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %12)
  store %struct.led_classdev* %13, %struct.led_classdev** %9, align 8
  %14 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %15 = call %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev* %14)
  store %struct.wm831x_status* %15, %struct.wm831x_status** %10, align 8
  %16 = load i32, i32* @led_src_texts, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @sysfs_match_string(i32 %16, i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.wm831x_status*, %struct.wm831x_status** %10, align 8
  %23 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.wm831x_status*, %struct.wm831x_status** %10, align 8
  %27 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.wm831x_status*, %struct.wm831x_status** %10, align 8
  %29 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.wm831x_status*, %struct.wm831x_status** %10, align 8
  %32 = call i32 @wm831x_status_set(%struct.wm831x_status* %31)
  br label %33

33:                                               ; preds = %21, %4
  %34 = load i64, i64* %8, align 8
  ret i64 %34
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev*) #1

declare dso_local i32 @sysfs_match_string(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wm831x_status_set(%struct.wm831x_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
