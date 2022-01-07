; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm77.c_temp_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm77.c_temp_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm77_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@t_crit = common dso_local global i64 0, align 8
@LM77_TEMP_MIN = common dso_local global i32 0, align 4
@LM77_TEMP_MAX = common dso_local global i32 0, align 4
@t_hyst = common dso_local global i64 0, align 8
@LM77_REG_TEMP_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm77_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.lm77_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.lm77_data* %15, %struct.lm77_data** %10, align 8
  %16 = load %struct.lm77_data*, %struct.lm77_data** %10, align 8
  %17 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtol(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %4
  %26 = load %struct.lm77_data*, %struct.lm77_data** %10, align 8
  %27 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.lm77_data*, %struct.lm77_data** %10, align 8
  %30 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @t_crit, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i32, i32* @LM77_TEMP_MIN, align 4
  %38 = load i32, i32* @LM77_TEMP_MAX, align 4
  %39 = call i64 @clamp_val(i64 %36, i32 %37, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.lm77_data*, %struct.lm77_data** %10, align 8
  %42 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @t_hyst, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %40, i64* %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %47 = load i32, i32* @LM77_REG_TEMP_HYST, align 4
  %48 = load %struct.lm77_data*, %struct.lm77_data** %10, align 8
  %49 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @t_hyst, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @LM77_TEMP_TO_REG(i64 %53)
  %55 = call i32 @lm77_write_value(%struct.i2c_client* %46, i32 %47, i32 %54)
  %56 = load %struct.lm77_data*, %struct.lm77_data** %10, align 8
  %57 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %25, %23
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.lm77_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @lm77_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM77_TEMP_TO_REG(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
