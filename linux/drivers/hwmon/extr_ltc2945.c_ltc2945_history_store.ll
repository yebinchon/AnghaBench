; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_history_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_history_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.regmap = type { i32 }

@__const.ltc2945_history_store.buf_min = private unnamed_addr constant [3 x i32] [i32 255, i32 255, i32 255], align 4
@EINVAL = common dso_local global i32 0, align 4
@LTC2945_CONTROL = common dso_local global i32 0, align 4
@CONTROL_TEST_MODE = common dso_local global i32 0, align 4
@LTC2945_MAX_POWER_H = common dso_local global i32 0, align 4
@LTC2945_MAX_SENSE_H = common dso_local global i32 0, align 4
@LTC2945_MAX_VIN_H = common dso_local global i32 0, align 4
@LTC2945_MAX_ADIN_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Bad register: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ltc2945_history_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2945_history_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %10, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.regmap* @dev_get_drvdata(%struct.device* %20)
  store %struct.regmap* %21, %struct.regmap** %11, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @is_power_reg(i32 %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 3, i32 2
  store i32 %29, i32* %13, align 4
  %30 = bitcast [3 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast ([3 x i32]* @__const.ltc2945_history_store.buf_min to i8*), i64 12, i1 false)
  %31 = bitcast [3 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 12, i1 false)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @kstrtoul(i8* %32, i32 10, i64* %16)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %5, align 4
  br label %93

38:                                               ; preds = %4
  %39 = load i64, i64* %16, align 8
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %93

44:                                               ; preds = %38
  %45 = load %struct.regmap*, %struct.regmap** %11, align 8
  %46 = load i32, i32* @LTC2945_CONTROL, align 4
  %47 = load i32, i32* @CONTROL_TEST_MODE, align 4
  %48 = load i32, i32* @CONTROL_TEST_MODE, align 4
  %49 = call i32 @regmap_update_bits(%struct.regmap* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load %struct.regmap*, %struct.regmap** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @regmap_bulk_write(%struct.regmap* %50, i32 %51, i32* %52, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %5, align 4
  br label %93

59:                                               ; preds = %44
  %60 = load i32, i32* %12, align 4
  switch i32 %60, label %69 [
    i32 130, label %61
    i32 129, label %63
    i32 128, label %65
    i32 131, label %67
  ]

61:                                               ; preds = %59
  %62 = load i32, i32* @LTC2945_MAX_POWER_H, align 4
  store i32 %62, i32* %12, align 4
  br label %74

63:                                               ; preds = %59
  %64 = load i32, i32* @LTC2945_MAX_SENSE_H, align 4
  store i32 %64, i32* %12, align 4
  br label %74

65:                                               ; preds = %59
  %66 = load i32, i32* @LTC2945_MAX_VIN_H, align 4
  store i32 %66, i32* %12, align 4
  br label %74

67:                                               ; preds = %59
  %68 = load i32, i32* @LTC2945_MAX_ADIN_H, align 4
  store i32 %68, i32* %12, align 4
  br label %74

69:                                               ; preds = %59
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %93

74:                                               ; preds = %67, %65, %63, %61
  %75 = load %struct.regmap*, %struct.regmap** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @regmap_bulk_write(%struct.regmap* %75, i32 %76, i32* %77, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load %struct.regmap*, %struct.regmap** %11, align 8
  %81 = load i32, i32* @LTC2945_CONTROL, align 4
  %82 = load i32, i32* @CONTROL_TEST_MODE, align 4
  %83 = call i32 @regmap_update_bits(%struct.regmap* %80, i32 %81, i32 %82, i32 0)
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = sext i32 %84 to i64
  br label %90

88:                                               ; preds = %74
  %89 = load i64, i64* %9, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i64 [ %87, %86 ], [ %89, %88 ]
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %69, %57, %41, %36
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @is_power_reg(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i32*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
