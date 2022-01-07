; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_temp_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_temp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i64*, i32, i32, i32, i32 }
%struct.sensor_device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_temp_type(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct6775_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.nct6775_data* @nct6775_update_device(%struct.device* %19)
  store %struct.nct6775_data* %20, %struct.nct6775_data** %10, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute* %22, %struct.sensor_device_attribute** %11, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtoul(i8* %26, i32 10, i64* %13)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %109

32:                                               ; preds = %4
  %33 = load i64, i64* %13, align 8
  %34 = icmp ne i64 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i64, i64* %13, align 8
  %37 = icmp ne i64 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %109

44:                                               ; preds = %38, %35, %32
  %45 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %46 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %50 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %48, i64* %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 2, %55
  store i32 %56, i32* %17, align 4
  %57 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %58 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %18, align 4
  %62 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %63 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %64 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nct6775_read_value(%struct.nct6775_data* %62, i32 %65)
  %67 = load i32, i32* %17, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  store i32 %69, i32* %15, align 4
  %70 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %71 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %72 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @nct6775_read_value(%struct.nct6775_data* %70, i32 %73)
  %75 = load i32, i32* %18, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  store i32 %77, i32* %16, align 4
  %78 = load i64, i64* %13, align 8
  switch i64 %78, label %91 [
    i64 1, label %79
    i64 3, label %86
    i64 4, label %90
  ]

79:                                               ; preds = %44
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %15, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %16, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %16, align 4
  br label %91

86:                                               ; preds = %44
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %15, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %15, align 4
  br label %91

90:                                               ; preds = %44
  br label %91

91:                                               ; preds = %44, %90, %86, %79
  %92 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %93 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %94 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @nct6775_write_value(%struct.nct6775_data* %92, i32 %95, i32 %96)
  %98 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %99 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %100 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @nct6775_write_value(%struct.nct6775_data* %98, i32 %101, i32 %102)
  %104 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %105 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i64, i64* %9, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %91, %41, %30
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.nct6775_data* @nct6775_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
