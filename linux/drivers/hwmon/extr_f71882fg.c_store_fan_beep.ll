; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_fan_beep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_fan_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@F71882FG_REG_FAN_BEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_fan_beep(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71882fg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.f71882fg_data* %15, %struct.f71882fg_data** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 10, i64* %13)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %64

26:                                               ; preds = %4
  %27 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %28 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %31 = load i32, i32* @F71882FG_REG_FAN_BEEP, align 4
  %32 = call i32 @f71882fg_read8(%struct.f71882fg_data* %30, i32 %31)
  %33 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %34 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = shl i32 1, %38
  %40 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %41 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %52

44:                                               ; preds = %26
  %45 = load i32, i32* %12, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %49 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %54 = load i32, i32* @F71882FG_REG_FAN_BEEP, align 4
  %55 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %56 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @f71882fg_write8(%struct.f71882fg_data* %53, i32 %54, i32 %57)
  %59 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %60 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %52, %24
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
