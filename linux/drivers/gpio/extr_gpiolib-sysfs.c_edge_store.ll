; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_edge_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_edge_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gpiod_data = type { i8, i32 }

@trigger_types = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @edge_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @edge_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gpiod_data*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.gpiod_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.gpiod_data* %15, %struct.gpiod_data** %10, align 8
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %34, %4
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trigger_types, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trigger_types, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @sysfs_streq(i32 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %13, align 4
  br label %17

37:                                               ; preds = %32, %17
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trigger_types, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %39)
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %90

45:                                               ; preds = %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trigger_types, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 4
  store i8 %51, i8* %11, align 1
  %52 = load %struct.gpiod_data*, %struct.gpiod_data** %10, align 8
  %53 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = load %struct.gpiod_data*, %struct.gpiod_data** %10, align 8
  %58 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 4
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %12, align 8
  br label %85

64:                                               ; preds = %45
  %65 = load %struct.gpiod_data*, %struct.gpiod_data** %10, align 8
  %66 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %65, i32 0, i32 0
  %67 = load i8, i8* %66, align 4
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @gpio_sysfs_free_irq(%struct.device* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i8, i8* %11, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i8, i8* %11, align 1
  %78 = call i64 @gpio_sysfs_request_irq(%struct.device* %76, i8 zeroext %77)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %81, %75
  br label %84

84:                                               ; preds = %83, %72
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.gpiod_data*, %struct.gpiod_data** %10, align 8
  %87 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i64, i64* %12, align 8
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %85, %42
  %91 = load i64, i64* %5, align 8
  ret i64 %91
}

declare dso_local %struct.gpiod_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @sysfs_streq(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_sysfs_free_irq(%struct.device*) #1

declare dso_local i64 @gpio_sysfs_request_irq(%struct.device*, i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
