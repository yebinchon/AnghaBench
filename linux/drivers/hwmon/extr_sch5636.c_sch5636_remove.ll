; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5636.c_sch5636_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5636.c_sch5636_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.sch5636_data = type { i64, i64 }

@sch5636_attr = common dso_local global %struct.TYPE_7__* null, align 8
@SCH5636_NO_TEMPS = common dso_local global i32 0, align 4
@sch5636_temp_attr = common dso_local global %struct.TYPE_5__* null, align 8
@SCH5636_NO_FANS = common dso_local global i32 0, align 4
@sch5636_fan_attr = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sch5636_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch5636_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sch5636_data*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sch5636_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sch5636_data* %6, %struct.sch5636_data** %3, align 8
  %7 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %8 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %13 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @sch56xx_watchdog_unregister(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %18 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %23 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @hwmon_device_unregister(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sch5636_attr, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sch5636_attr, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = call i32 @device_remove_file(i32* %34, i32* %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %27

44:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %59, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SCH5636_NO_TEMPS, align 4
  %48 = mul nsw i32 %47, 3
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sch5636_temp_attr, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @device_remove_file(i32* %52, i32* %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %45

62:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SCH5636_NO_FANS, align 4
  %66 = mul nsw i32 %65, 3
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sch5636_fan_attr, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 @device_remove_file(i32* %70, i32* %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %63

80:                                               ; preds = %63
  ret i32 0
}

declare dso_local %struct.sch5636_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sch56xx_watchdog_unregister(i64) #1

declare dso_local i32 @hwmon_device_unregister(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
