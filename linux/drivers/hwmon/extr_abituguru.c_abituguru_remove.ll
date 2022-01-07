; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.abituguru_data = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }

@abituguru_sysfs_attr = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @abituguru_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.abituguru_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.abituguru_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.abituguru_data* %6, %struct.abituguru_data** %4, align 8
  %7 = load %struct.abituguru_data*, %struct.abituguru_data** %4, align 8
  %8 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @hwmon_device_unregister(i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %34, %1
  %12 = load %struct.abituguru_data*, %struct.abituguru_data** %4, align 8
  %13 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %11
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.abituguru_data*, %struct.abituguru_data** %4, align 8
  %27 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @device_remove_file(i32* %25, %struct.TYPE_8__* %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %11

37:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @abituguru_sysfs_attr, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @abituguru_sysfs_attr, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = call i32 @device_remove_file(i32* %45, %struct.TYPE_8__* %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %38

55:                                               ; preds = %38
  ret i32 0
}

declare dso_local %struct.abituguru_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @device_remove_file(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
