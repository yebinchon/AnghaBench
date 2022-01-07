; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_status_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_status_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sht15_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SHT15_STATUS_HEATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sht15_status_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_status_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sht15_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.sht15_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.sht15_data* %15, %struct.sht15_data** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @kstrtol(i8* %16, i32 10, i64* %12)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %4
  %23 = load %struct.sht15_data*, %struct.sht15_data** %11, align 8
  %24 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.sht15_data*, %struct.sht15_data** %11, align 8
  %27 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 7
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @SHT15_STATUS_HEATER, align 4
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %13, align 4
  br label %41

36:                                               ; preds = %22
  %37 = load i32, i32* @SHT15_STATUS_HEATER, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %13, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.sht15_data*, %struct.sht15_data** %11, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @sht15_send_status(%struct.sht15_data* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.sht15_data*, %struct.sht15_data** %11, align 8
  %46 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  br label %55

53:                                               ; preds = %41
  %54 = load i64, i64* %9, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i64 [ %52, %50 ], [ %54, %53 ]
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.sht15_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sht15_send_status(%struct.sht15_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
