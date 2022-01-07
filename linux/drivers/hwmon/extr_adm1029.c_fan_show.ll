; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_fan_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_fan_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.adm1029_data = type { i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.adm1029_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute* %12, %struct.sensor_device_attribute** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.adm1029_data* @adm1029_update_device(%struct.device* %13)
  store %struct.adm1029_data* %14, %struct.adm1029_data** %9, align 8
  %15 = load %struct.adm1029_data*, %struct.adm1029_data** %9, align 8
  %16 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %3
  %25 = load %struct.adm1029_data*, %struct.adm1029_data** %9, align 8
  %26 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %29 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 192
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %24
  %36 = load %struct.adm1029_data*, %struct.adm1029_data** %9, align 8
  %37 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %40 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %48

45:                                               ; preds = %35, %24, %3
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  br label %71

48:                                               ; preds = %35
  %49 = load %struct.adm1029_data*, %struct.adm1029_data** %9, align 8
  %50 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %53 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DIV_FROM_REG(i32 %56)
  %58 = sdiv i32 225600, %57
  %59 = load %struct.adm1029_data*, %struct.adm1029_data** %9, align 8
  %60 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %63 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %58, %66
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %48, %45
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adm1029_data* @adm1029_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
