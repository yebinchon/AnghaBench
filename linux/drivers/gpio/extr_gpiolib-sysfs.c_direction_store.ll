; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_direction_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_direction_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gpiod_data = type { i32, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @direction_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @direction_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gpiod_data*, align 8
  %10 = alloca %struct.gpio_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.gpiod_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.gpiod_data* %13, %struct.gpiod_data** %9, align 8
  %14 = load %struct.gpiod_data*, %struct.gpiod_data** %9, align 8
  %15 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %14, i32 0, i32 1
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %15, align 8
  store %struct.gpio_desc* %16, %struct.gpio_desc** %10, align 8
  %17 = load %struct.gpiod_data*, %struct.gpiod_data** %9, align 8
  %18 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @sysfs_streq(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %25 = call i32 @gpiod_direction_output_raw(%struct.gpio_desc* %24, i32 1)
  store i32 %25, i32* %11, align 4
  br label %49

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @sysfs_streq(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @sysfs_streq(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %36 = call i32 @gpiod_direction_output_raw(%struct.gpio_desc* %35, i32 0)
  store i32 %36, i32* %11, align 4
  br label %48

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @sysfs_streq(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %43 = call i32 @gpiod_direction_input(%struct.gpio_desc* %42)
  store i32 %43, i32* %11, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %34
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.gpiod_data*, %struct.gpiod_data** %9, align 8
  %51 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = sext i32 %53 to i64
  br label %59

57:                                               ; preds = %49
  %58 = load i64, i64* %8, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local %struct.gpiod_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @gpiod_direction_output_raw(%struct.gpio_desc*, i32) #1

declare dso_local i32 @gpiod_direction_input(%struct.gpio_desc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
