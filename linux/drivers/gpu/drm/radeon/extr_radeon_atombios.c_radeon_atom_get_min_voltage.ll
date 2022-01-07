; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_min_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_min_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%union.voltage_object_info = type { i32 }
%union.voltage_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_13__ }

@DATA = common dso_local global i32 0, align 4
@VoltageObjectInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown voltage object table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_min_voltage(%struct.radeon_device* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %union.voltage_object_info*, align 8
  %14 = alloca %union.voltage_object*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %17 = load i32, i32* @DATA, align 4
  %18 = load i32, i32* @VoltageObjectInfo, align 4
  %19 = call i32 @GetIndexIntoMasterTable(i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  store %union.voltage_object* null, %union.voltage_object** %14, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @atom_parse_data_header(%struct.TYPE_14__* %23, i32 %24, i64* %12, i32* %9, i32* %10, i64* %11)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %88

27:                                               ; preds = %3
  %28 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add nsw i64 %33, %34
  %36 = inttoptr i64 %35 to %union.voltage_object_info*
  store %union.voltage_object_info* %36, %union.voltage_object_info** %13, align 8
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %83 [
    i32 1, label %38
    i32 2, label %56
  ]

38:                                               ; preds = %27
  %39 = load %union.voltage_object_info*, %union.voltage_object_info** %13, align 8
  %40 = bitcast %union.voltage_object_info* %39 to i32*
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @atom_lookup_voltage_object_v1(i32* %40, i32 %41)
  %43 = inttoptr i64 %42 to %union.voltage_object*
  store %union.voltage_object* %43, %union.voltage_object** %14, align 8
  %44 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %45 = icmp ne %union.voltage_object* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %48 = bitcast %union.voltage_object* %47 to %struct.TYPE_9__*
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %15, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le16_to_cpu(i32 %52)
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  store i32 0, i32* %4, align 4
  br label %91

55:                                               ; preds = %38
  br label %87

56:                                               ; preds = %27
  %57 = load %union.voltage_object_info*, %union.voltage_object_info** %13, align 8
  %58 = bitcast %union.voltage_object_info* %57 to i32*
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @atom_lookup_voltage_object_v2(i32* %58, i32 %59)
  %61 = inttoptr i64 %60 to %union.voltage_object*
  store %union.voltage_object* %61, %union.voltage_object** %14, align 8
  %62 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %63 = icmp ne %union.voltage_object* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %56
  %65 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %66 = bitcast %union.voltage_object* %65 to %struct.TYPE_10__*
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %16, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le16_to_cpu(i32 %78)
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  store i32 0, i32* %4, align 4
  br label %91

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %56
  br label %87

83:                                               ; preds = %27
  %84 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %91

87:                                               ; preds = %82, %55
  br label %88

88:                                               ; preds = %87, %3
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %83, %72, %46
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_14__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i64 @atom_lookup_voltage_object_v1(i32*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @atom_lookup_voltage_object_v2(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
