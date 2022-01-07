; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7414.c_max_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7414.c_max_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ad7414_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AD7414_REG_LIMIT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ad7414_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.ad7414_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.ad7414_data* %17, %struct.ad7414_data** %10, align 8
  %18 = load %struct.ad7414_data*, %struct.ad7414_data** %10, align 8
  %19 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** @AD7414_REG_LIMIT, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @kstrtol(i8* %30, i32 10, i64* %14)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %5, align 4
  br label %66

36:                                               ; preds = %4
  %37 = load i64, i64* %14, align 8
  %38 = call i64 @clamp_val(i64 %37, i32 -40000, i32 85000)
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 -500, i32 500
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %39, %44
  %46 = sdiv i64 %45, 1000
  store i64 %46, i64* %14, align 8
  %47 = load %struct.ad7414_data*, %struct.ad7414_data** %10, align 8
  %48 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.ad7414_data*, %struct.ad7414_data** %10, align 8
  %52 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %50, i64* %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @ad7414_write(%struct.i2c_client* %57, i32 %58, i64 %59)
  %61 = load %struct.ad7414_data*, %struct.ad7414_data** %10, align 8
  %62 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %36, %34
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.ad7414_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7414_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
