; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_active_low_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_active_low_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gpiod_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @active_low_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @active_low_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gpiod_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.gpiod_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.gpiod_data* %13, %struct.gpiod_data** %9, align 8
  %14 = load %struct.gpiod_data*, %struct.gpiod_data** %9, align 8
  %15 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @kstrtol(i8* %17, i32 0, i64* %11)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i64 @gpio_sysfs_set_active_low(%struct.device* %22, i64 %23)
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.gpiod_data*, %struct.gpiod_data** %9, align 8
  %27 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i64 [ %29, %31 ], [ %33, %32 ]
  ret i64 %35
}

declare dso_local %struct.gpiod_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @gpio_sysfs_set_active_low(%struct.device*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
