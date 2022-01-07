; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_show_speed_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_show_speed_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i32*, i32*, i32* }
%struct.sensor_device_attribute = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_speed_tolerance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_speed_tolerance(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nct6775_data*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.nct6775_data* @nct6775_update_device(%struct.device* %14)
  store %struct.nct6775_data* %15, %struct.nct6775_data** %7, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %8, align 8
  %18 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.nct6775_data*, %struct.nct6775_data** %7, align 8
  %22 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.nct6775_data*, %struct.nct6775_data** %7, align 8
  %33 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %31, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.nct6775_data*, %struct.nct6775_data** %7, align 8
  %42 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %40, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 65535
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 65535, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.nct6775_data*, %struct.nct6775_data** %7, align 8
  %65 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fan_from_reg16(i32 %63, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.nct6775_data*, %struct.nct6775_data** %7, align 8
  %74 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fan_from_reg16(i32 %72, i32 %79)
  %81 = sub nsw i32 %71, %80
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %62, %3
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @sprintf(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %85)
  ret i32 %86
}

declare dso_local %struct.nct6775_data* @nct6775_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @fan_from_reg16(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
