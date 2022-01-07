; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_sht3x_update_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_sht3x_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht3x_data = type { i64, i32, i64, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@mode_to_update_interval = common dso_local global i32* null, align 8
@SHT3X_RESPONSE_LENGTH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sht3x_data* (%struct.device*)* @sht3x_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sht3x_data* @sht3x_update_client(%struct.device* %0) #0 {
  %2 = alloca %struct.sht3x_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sht3x_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.sht3x_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.sht3x_data* %14, %struct.sht3x_data** %4, align 8
  %15 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %16 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %15, i32 0, i32 7
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %5, align 8
  %18 = load i32*, i32** @mode_to_update_interval, align 8
  %19 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %20 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* @SHT3X_RESPONSE_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %8, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %30 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %31 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %35 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  %39 = call i64 @time_after(i64 %33, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %1
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %44 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %45 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = trunc i64 %27 to i32
  %48 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %49 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sht3x_read_from_command(%struct.i2c_client* %42, %struct.sht3x_data* %43, i32 %46, i8* %29, i32 %47, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %73

55:                                               ; preds = %41
  %56 = bitcast i8* %29 to i32*
  %57 = call i32 @be16_to_cpup(i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @sht3x_extract_temperature(i32 %58)
  %60 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %61 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds i8, i8* %29, i64 3
  %63 = bitcast i8* %62 to i32*
  %64 = call i32 @be16_to_cpup(i32* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @sht3x_extract_humidity(i32 %65)
  %67 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %68 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* @jiffies, align 8
  %70 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %71 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %55, %1
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  %75 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.sht3x_data* @ERR_PTR(i32 %80)
  store %struct.sht3x_data* %81, %struct.sht3x_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load %struct.sht3x_data*, %struct.sht3x_data** %4, align 8
  store %struct.sht3x_data* %83, %struct.sht3x_data** %2, align 8
  store i32 1, i32* %12, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  ret %struct.sht3x_data* %86
}

declare dso_local %struct.sht3x_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @sht3x_read_from_command(%struct.i2c_client*, %struct.sht3x_data*, i32, i8*, i32, i32) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @sht3x_extract_temperature(i32) #1

declare dso_local i32 @sht3x_extract_humidity(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sht3x_data* @ERR_PTR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
