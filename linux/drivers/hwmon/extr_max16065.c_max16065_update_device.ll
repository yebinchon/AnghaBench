; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max16065.c_max16065_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max16065.c_max16065_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max16065_data = type { i32, i32, i32, i64, i8**, i8*, i8**, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MAX16065_CSP_ADC = common dso_local global i32 0, align 4
@MAX16065_NUM_ADC = common dso_local global i64 0, align 8
@MAX16065_CURR_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max16065_data* (%struct.device*)* @max16065_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max16065_data* @max16065_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.max16065_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.max16065_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.max16065_data* %7, %struct.max16065_data** %3, align 8
  %8 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %9 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %8, i32 0, i32 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %12 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %16 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_after(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %24 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %95, label %27

27:                                               ; preds = %22, %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %31 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @MAX16065_ADC(i32 %36)
  %38 = call i8* @max16065_read_adc(%struct.i2c_client* %35, i32 %37)
  %39 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %40 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %39, i32 0, i32 6
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  store i8* %38, i8** %44, align 8
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %50 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load i32, i32* @MAX16065_CSP_ADC, align 4
  %56 = call i8* @max16065_read_adc(%struct.i2c_client* %54, i32 %55)
  %57 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %58 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %57, i32 0, i32 6
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* @MAX16065_NUM_ADC, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  store i8* %56, i8** %61, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load i32, i32* @MAX16065_CURR_SENSE, align 4
  %64 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  %65 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %66 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %53, %48
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %71 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DIV_ROUND_UP(i32 %72, i32 8)
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @MAX16065_FAULT(i32 %77)
  %79 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %76, i32 %78)
  %80 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %81 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %80, i32 0, i32 4
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %79, i8** %85, align 8
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %68

89:                                               ; preds = %68
  %90 = load i64, i64* @jiffies, align 8
  %91 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %92 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %94 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %22
  %96 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  %97 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %96, i32 0, i32 2
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.max16065_data*, %struct.max16065_data** %3, align 8
  ret %struct.max16065_data* %99
}

declare dso_local %struct.max16065_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i8* @max16065_read_adc(%struct.i2c_client*, i32) #1

declare dso_local i32 @MAX16065_ADC(i32) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @MAX16065_FAULT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
