; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_update_interval_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_update_interval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm95234_data = type { i32, i32, i32 }

@update_intervals = common dso_local global i64* null, align 8
@LM95234_REG_CONVRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @update_interval_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_interval_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm95234_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.lm95234_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.lm95234_data* %15, %struct.lm95234_data** %10, align 8
  %16 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %17 = call i32 @lm95234_update_device(%struct.lm95234_data* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %69

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtoul(i8* %23, i32 10, i64* %12)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %69

29:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i64, i64* %12, align 8
  %35 = load i64*, i64** @update_intervals, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ule i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %30

46:                                               ; preds = %41, %30
  %47 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %48 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i64*, i64** @update_intervals, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @msecs_to_jiffies(i64 %54)
  %56 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %57 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %59 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LM95234_REG_CONVRATE, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @i2c_smbus_write_byte_data(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %65 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %46, %27, %20
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.lm95234_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lm95234_update_device(%struct.lm95234_data*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
