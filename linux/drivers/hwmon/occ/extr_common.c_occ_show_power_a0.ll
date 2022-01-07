; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_show_power_a0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_show_power_a0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_sensor_a0 = type { %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.occ = type { i32, %struct.occ_sensors }
%struct.occ_sensors = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%u_system\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%u_proc\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%u_vdd\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%u_vdn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @occ_show_power_a0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_show_power_a0(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.power_sensor_a0*, align 8
  %11 = alloca %struct.occ*, align 8
  %12 = alloca %struct.occ_sensors*, align 8
  %13 = alloca %struct.sensor_device_attribute_2*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.occ* @dev_get_drvdata(%struct.device* %14)
  store %struct.occ* %15, %struct.occ** %11, align 8
  %16 = load %struct.occ*, %struct.occ** %11, align 8
  %17 = getelementptr inbounds %struct.occ, %struct.occ* %16, i32 0, i32 1
  store %struct.occ_sensors* %17, %struct.occ_sensors** %12, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %19 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute_2* %19, %struct.sensor_device_attribute_2** %13, align 8
  %20 = load %struct.occ*, %struct.occ** %11, align 8
  %21 = call i32 @occ_update_response(%struct.occ* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %177

26:                                               ; preds = %3
  %27 = load %struct.occ_sensors*, %struct.occ_sensors** %12, align 8
  %28 = getelementptr inbounds %struct.occ_sensors, %struct.occ_sensors* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.power_sensor_a0*
  %32 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %13, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %31, i64 %35
  store %struct.power_sensor_a0* %36, %struct.power_sensor_a0** %10, align 8
  %37 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %13, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %168 [
    i32 0, label %40
    i32 1, label %48
    i32 2, label %56
    i32 3, label %65
    i32 4, label %72
    i32 5, label %80
    i32 6, label %88
    i32 7, label %97
    i32 8, label %104
    i32 9, label %112
    i32 10, label %120
    i32 11, label %129
    i32 12, label %136
    i32 13, label %144
    i32 14, label %152
    i32 15, label %161
  ]

40:                                               ; preds = %26
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = sub nsw i64 %42, 1
  %44 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %45 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %44, i32 0, i32 1
  %46 = call i32 @get_unaligned_be32(i32* %45)
  %47 = call i32 @snprintf(i8* %41, i64 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %4, align 4
  br label %177

48:                                               ; preds = %26
  %49 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %50 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %53 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = call i32 @occ_get_powr_avg(i32* %51, i32* %54)
  store i32 %55, i32* %9, align 4
  br label %171

56:                                               ; preds = %26
  %57 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %58 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = call i32 @get_unaligned_be32(i32* %59)
  %61 = load %struct.occ*, %struct.occ** %11, align 8
  %62 = getelementptr inbounds %struct.occ, %struct.occ* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %60, %63
  store i32 %64, i32* %9, align 4
  br label %171

65:                                               ; preds = %26
  %66 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %67 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i64 @get_unaligned_be16(i32* %68)
  %70 = mul i64 %69, 1000000
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %9, align 4
  br label %171

72:                                               ; preds = %26
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %77 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %76, i32 0, i32 1
  %78 = call i32 @get_unaligned_be32(i32* %77)
  %79 = call i32 @snprintf(i8* %73, i64 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 %79, i32* %4, align 4
  br label %177

80:                                               ; preds = %26
  %81 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %82 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %85 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = call i32 @occ_get_powr_avg(i32* %83, i32* %86)
  store i32 %87, i32* %9, align 4
  br label %171

88:                                               ; preds = %26
  %89 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %90 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = call i32 @get_unaligned_be32(i32* %91)
  %93 = load %struct.occ*, %struct.occ** %11, align 8
  %94 = getelementptr inbounds %struct.occ, %struct.occ* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %92, %95
  store i32 %96, i32* %9, align 4
  br label %171

97:                                               ; preds = %26
  %98 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %99 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = call i64 @get_unaligned_be16(i32* %100)
  %102 = mul i64 %101, 1000000
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %9, align 4
  br label %171

104:                                              ; preds = %26
  %105 = load i8*, i8** %7, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = sub nsw i64 %106, 1
  %108 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %109 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %108, i32 0, i32 1
  %110 = call i32 @get_unaligned_be32(i32* %109)
  %111 = call i32 @snprintf(i8* %105, i64 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  store i32 %111, i32* %4, align 4
  br label %177

112:                                              ; preds = %26
  %113 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %114 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %117 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = call i32 @occ_get_powr_avg(i32* %115, i32* %118)
  store i32 %119, i32* %9, align 4
  br label %171

120:                                              ; preds = %26
  %121 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %122 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = call i32 @get_unaligned_be32(i32* %123)
  %125 = load %struct.occ*, %struct.occ** %11, align 8
  %126 = getelementptr inbounds %struct.occ, %struct.occ* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  store i32 %128, i32* %9, align 4
  br label %171

129:                                              ; preds = %26
  %130 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %131 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = call i64 @get_unaligned_be16(i32* %132)
  %134 = mul i64 %133, 1000000
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %9, align 4
  br label %171

136:                                              ; preds = %26
  %137 = load i8*, i8** %7, align 8
  %138 = load i64, i64* @PAGE_SIZE, align 8
  %139 = sub nsw i64 %138, 1
  %140 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %141 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %140, i32 0, i32 1
  %142 = call i32 @get_unaligned_be32(i32* %141)
  %143 = call i32 @snprintf(i8* %137, i64 %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  store i32 %143, i32* %4, align 4
  br label %177

144:                                              ; preds = %26
  %145 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %146 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %149 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = call i32 @occ_get_powr_avg(i32* %147, i32* %150)
  store i32 %151, i32* %9, align 4
  br label %171

152:                                              ; preds = %26
  %153 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %154 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = call i32 @get_unaligned_be32(i32* %155)
  %157 = load %struct.occ*, %struct.occ** %11, align 8
  %158 = getelementptr inbounds %struct.occ, %struct.occ* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %156, %159
  store i32 %160, i32* %9, align 4
  br label %171

161:                                              ; preds = %26
  %162 = load %struct.power_sensor_a0*, %struct.power_sensor_a0** %10, align 8
  %163 = getelementptr inbounds %struct.power_sensor_a0, %struct.power_sensor_a0* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = call i64 @get_unaligned_be16(i32* %164)
  %166 = mul i64 %165, 1000000
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %9, align 4
  br label %171

168:                                              ; preds = %26
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %4, align 4
  br label %177

171:                                              ; preds = %161, %152, %144, %129, %120, %112, %97, %88, %80, %65, %56, %48
  %172 = load i8*, i8** %7, align 8
  %173 = load i64, i64* @PAGE_SIZE, align 8
  %174 = sub nsw i64 %173, 1
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @snprintf(i8* %172, i64 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %171, %168, %136, %104, %72, %40, %24
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.occ* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @occ_update_response(%struct.occ*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @occ_get_powr_avg(i32*, i32*) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
