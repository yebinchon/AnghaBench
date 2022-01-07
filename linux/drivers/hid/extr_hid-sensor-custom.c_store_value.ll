; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_store_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_store_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hid_sensor_custom = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@HID_CUSTOM_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"feature-%x-%x-%s\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_value(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hid_sensor_custom*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.hid_sensor_custom* @dev_get_drvdata(%struct.device* %20)
  store %struct.hid_sensor_custom* %21, %struct.hid_sensor_custom** %10, align 8
  %22 = load i32, i32* @HID_CUSTOM_NAME_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %27 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sscanf(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %13, i8* %25)
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %35 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %12, align 4
  br label %41

38:                                               ; preds = %4
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %73

41:                                               ; preds = %32
  %42 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @kstrtoint(i8* %46, i32 0, i32* %16)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* @EINVAL, align 8
  %51 = sub i64 0, %50
  store i64 %51, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %73

52:                                               ; preds = %45
  %53 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %54 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %18, align 4
  %62 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %63 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @sensor_hub_set_feature(i32 %64, i32 %65, i32 %66, i32 4, i32* %16)
  store i32 %67, i32* %19, align 4
  br label %71

68:                                               ; preds = %41
  %69 = load i64, i64* @EINVAL, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %73

71:                                               ; preds = %52
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %73

73:                                               ; preds = %71, %68, %49, %38
  %74 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local %struct.hid_sensor_custom* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @sensor_hub_set_feature(i32, i32, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
