; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_alarm_mask_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_alarm_mask_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7470_data = type { i64, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7470_REG_ALARM1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @alarm_mask_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alarm_mask_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adt7470_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.adt7470_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.adt7470_data* %13, %struct.adt7470_data** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @kstrtoul(i8* %14, i32 0, i64* %11)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %44

20:                                               ; preds = %4
  %21 = load i64, i64* %11, align 8
  %22 = and i64 %21, -65536
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %44

27:                                               ; preds = %20
  %28 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %29 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %33 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %35 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ADT7470_REG_ALARM1_MASK, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @adt7470_write_word_data(i32 %36, i32 %37, i64 %38)
  %40 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %41 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %27, %24, %17
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local %struct.adt7470_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7470_write_word_data(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
