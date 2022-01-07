; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_update_interval_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_update_interval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tmp401_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@TMP401_CONVERSION_RATE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @update_interval_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_interval_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tmp401_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.tmp401_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.tmp401_data* %16, %struct.tmp401_data** %10, align 8
  %17 = load %struct.tmp401_data*, %struct.tmp401_data** %10, align 8
  %18 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 10, i64* %12)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %5, align 4
  br label %52

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = call i64 @clamp_val(i64 %27, i32 125, i32 16000)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = mul i64 %29, 4
  %31 = udiv i64 %30, 375
  %32 = call i32 @__fls(i64 %31)
  %33 = sub nsw i32 7, %32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.tmp401_data*, %struct.tmp401_data** %10, align 8
  %35 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %38 = load i32, i32* @TMP401_CONVERSION_RATE_WRITE, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %14, align 4
  %42 = sub nsw i32 7, %41
  %43 = shl i32 1, %42
  %44 = mul nsw i32 %43, 125
  %45 = load %struct.tmp401_data*, %struct.tmp401_data** %10, align 8
  %46 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.tmp401_data*, %struct.tmp401_data** %10, align 8
  %48 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %26, %24
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.tmp401_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @__fls(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
