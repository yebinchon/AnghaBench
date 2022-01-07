; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_sysfs.c_occ_sysfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_sysfs.c_occ_sysfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.occ = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.occ_poll_response_header = type { i32, i32, i32, i32 }
%struct.sensor_device_attribute = type { i32 }

@OCC_STAT_MASTER = common dso_local global i32 0, align 4
@OCC_STAT_ACTIVE = common dso_local global i32 0, align 4
@OCC_EXT_STAT_DVFS_OT = common dso_local global i32 0, align 4
@OCC_EXT_STAT_DVFS_POWER = common dso_local global i32 0, align 4
@OCC_EXT_STAT_MEM_THROTTLE = common dso_local global i32 0, align 4
@OCC_EXT_STAT_QUICK_DROP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @occ_sysfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_sysfs_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.occ*, align 8
  %11 = alloca %struct.occ_poll_response_header*, align 8
  %12 = alloca %struct.sensor_device_attribute*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.occ* @dev_get_drvdata(%struct.device* %13)
  store %struct.occ* %14, %struct.occ** %10, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %12, align 8
  %17 = load %struct.occ*, %struct.occ** %10, align 8
  %18 = call i32 @occ_update_response(%struct.occ* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %119

23:                                               ; preds = %3
  %24 = load %struct.occ*, %struct.occ** %10, align 8
  %25 = getelementptr inbounds %struct.occ, %struct.occ* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.occ_poll_response_header*
  store %struct.occ_poll_response_header* %28, %struct.occ_poll_response_header** %11, align 8
  %29 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %30 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %110 [
    i32 0, label %32
    i32 1, label %42
    i32 2, label %52
    i32 3, label %62
    i32 4, label %72
    i32 5, label %82
    i32 6, label %92
    i32 7, label %96
  ]

32:                                               ; preds = %23
  %33 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %34 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OCC_STAT_MASTER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %113

42:                                               ; preds = %23
  %43 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %44 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @OCC_STAT_ACTIVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  br label %113

52:                                               ; preds = %23
  %53 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %54 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @OCC_EXT_STAT_DVFS_OT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %113

62:                                               ; preds = %23
  %63 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %64 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @OCC_EXT_STAT_DVFS_POWER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %9, align 4
  br label %113

72:                                               ; preds = %23
  %73 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %74 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @OCC_EXT_STAT_MEM_THROTTLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %9, align 4
  br label %113

82:                                               ; preds = %23
  %83 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %84 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @OCC_EXT_STAT_QUICK_DROP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %9, align 4
  br label %113

92:                                               ; preds = %23
  %93 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %94 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %9, align 4
  br label %113

96:                                               ; preds = %23
  %97 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %98 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @OCC_STAT_MASTER, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %105 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @hweight8(i32 %106)
  store i32 %107, i32* %9, align 4
  br label %109

108:                                              ; preds = %96
  store i32 1, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %103
  br label %113

110:                                              ; preds = %23
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %119

113:                                              ; preds = %109, %92, %82, %72, %62, %52, %42, %32
  %114 = load i8*, i8** %7, align 8
  %115 = load i64, i64* @PAGE_SIZE, align 8
  %116 = sub nsw i64 %115, 1
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @snprintf(i8* %114, i64 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %117)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %113, %110, %21
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.occ* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @occ_update_response(%struct.occ*) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
