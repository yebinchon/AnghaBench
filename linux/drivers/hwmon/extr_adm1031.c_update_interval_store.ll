; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_update_interval_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_update_interval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1031_data = type { i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@update_intervals = common dso_local global i64* null, align 8
@ADM1031_REG_FAN_FILTER = common dso_local global i32 0, align 4
@ADM1031_UPDATE_RATE_MASK = common dso_local global i32 0, align 4
@ADM1031_UPDATE_RATE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @update_interval_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_interval_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1031_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.adm1031_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.adm1031_data* %17, %struct.adm1031_data** %10, align 8
  %18 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %19 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %12)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %13, align 4
  %30 = load i64*, i64** @update_intervals, align 8
  %31 = call i32 @ARRAY_SIZE(i64* %30)
  %32 = sub nsw i32 %31, 1
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i64, i64* %12, align 8
  %36 = load i64*, i64** @update_intervals, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %47

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %28

47:                                               ; preds = %42, %28
  %48 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %49 = load i32, i32* @ADM1031_REG_FAN_FILTER, align 4
  %50 = call i32 @adm1031_read_value(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @ADM1031_UPDATE_RATE_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @ADM1031_UPDATE_RATE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %15, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %15, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %61 = load i32, i32* @ADM1031_REG_FAN_FILTER, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @adm1031_write_value(%struct.i2c_client* %60, i32 %61, i32 %62)
  %64 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %65 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %64, i32 0, i32 1
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load i64*, i64** @update_intervals, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %73 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %75 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i64, i64* %9, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %47, %25
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.adm1031_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @adm1031_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
