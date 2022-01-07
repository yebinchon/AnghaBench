; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_in16_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_in16_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1026_data = type { i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@NEG12_OFFSET = common dso_local global i64 0, align 8
@ADM1026_REG_IN_MAX = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in16_max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in16_max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1026_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.adm1026_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.adm1026_data* %15, %struct.adm1026_data** %10, align 8
  %16 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %17 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %16, i32 0, i32 2
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
  br label %57

25:                                               ; preds = %4
  %26 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %27 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* @INT_MIN, align 4
  %31 = load i64, i64* @INT_MAX, align 8
  %32 = load i64, i64* @NEG12_OFFSET, align 8
  %33 = sub nsw i64 %31, %32
  %34 = call i64 @clamp_val(i64 %29, i32 %30, i64 %33)
  %35 = load i64, i64* @NEG12_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @INS_TO_REG(i32 16, i64 %36)
  %38 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %39 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  store i32 %37, i32* %41, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %43 = load i32*, i32** @ADM1026_REG_IN_MAX, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 16
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %47 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 16
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @adm1026_write_value(%struct.i2c_client* %42, i32 %45, i32 %50)
  %52 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %53 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %25, %23
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.adm1026_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INS_TO_REG(i32, i64) #1

declare dso_local i64 @clamp_val(i64, i32, i64) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
