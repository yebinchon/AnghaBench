; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_value_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_value_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gpiod_data = type { i32, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@FLAG_IS_OUT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @value_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @value_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gpiod_data*, align 8
  %10 = alloca %struct.gpio_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.gpiod_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.gpiod_data* %14, %struct.gpiod_data** %9, align 8
  %15 = load %struct.gpiod_data*, %struct.gpiod_data** %9, align 8
  %16 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %15, i32 0, i32 1
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  store %struct.gpio_desc* %17, %struct.gpio_desc** %10, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.gpiod_data*, %struct.gpiod_data** %9, align 8
  %19 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @FLAG_IS_OUT, align 4
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %23 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %22, i32 0, i32 0
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* @EPERM, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %11, align 8
  br label %66

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  %31 = icmp ule i64 %30, 2
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isdigit(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %54

47:                                               ; preds = %41, %38
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = sub nsw i32 %51, 48
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %12, align 8
  br label %57

54:                                               ; preds = %41, %32, %29
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @kstrtol(i8* %55, i32 0, i64* %12)
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %54, %47
  %58 = load i64, i64* %11, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %61, i64 %62)
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %60, %57
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.gpiod_data*, %struct.gpiod_data** %9, align 8
  %68 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i64, i64* %11, align 8
  ret i64 %70
}

declare dso_local %struct.gpiod_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
