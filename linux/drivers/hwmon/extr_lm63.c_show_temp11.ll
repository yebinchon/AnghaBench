; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_show_temp11.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_show_temp11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm63_data = type { i32, i64*, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_temp11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_temp11(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute*, align 8
  %8 = alloca %struct.lm63_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %12 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute* %12, %struct.sensor_device_attribute** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.lm63_data* @lm63_update_device(%struct.device* %13)
  store %struct.lm63_data* %14, %struct.lm63_data** %8, align 8
  %15 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %3
  %21 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %22 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %27 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @TEMP11_FROM_REG(i64 %28)
  store i32 %29, i32* %10, align 4
  br label %39

30:                                               ; preds = %20
  %31 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %32 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @TEMP11_FROM_REG(i64 %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %30, %25
  br label %67

40:                                               ; preds = %3
  %41 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %42 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %50 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @TEMP11_FROM_REG(i64 %55)
  store i32 %56, i32* %10, align 4
  br label %66

57:                                               ; preds = %45, %40
  %58 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %59 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @TEMP11_FROM_REG(i64 %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %57, %48
  br label %67

67:                                               ; preds = %66, %39
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %71 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %69, %72
  %74 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %73)
  ret i32 %74
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm63_data* @lm63_update_device(%struct.device*) #1

declare dso_local i32 @TEMP11_FROM_REG(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
