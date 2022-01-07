; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_is_voltage_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_is_voltage_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%union.voltage_object_info = type { i32 }
%union.voltage_object = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@VoltageObjectInfo = common dso_local global i32 0, align 4
@VOLTAGE_CONTROLLED_BY_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown voltage object table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_is_voltage_gpio(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %union.voltage_object_info*, align 8
  %14 = alloca %union.voltage_object*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @DATA, align 4
  %16 = load i32, i32* @VoltageObjectInfo, align 4
  %17 = call i32 @GetIndexIntoMasterTable(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  store %union.voltage_object* null, %union.voltage_object** %14, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @atom_parse_data_header(%struct.TYPE_12__* %21, i32 %22, i64* %12, i32* %9, i32* %10, i64* %11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %94

25:                                               ; preds = %3
  %26 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add nsw i64 %31, %32
  %34 = inttoptr i64 %33 to %union.voltage_object_info*
  store %union.voltage_object_info* %34, %union.voltage_object_info** %13, align 8
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %91 [
    i32 1, label %36
    i32 2, label %36
    i32 3, label %77
  ]

36:                                               ; preds = %25, %25
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %74 [
    i32 1, label %38
    i32 2, label %56
  ]

38:                                               ; preds = %36
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
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @VOLTAGE_CONTROLLED_BY_GPIO, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %95

55:                                               ; preds = %46, %38
  br label %76

56:                                               ; preds = %36
  %57 = load %union.voltage_object_info*, %union.voltage_object_info** %13, align 8
  %58 = bitcast %union.voltage_object_info* %57 to i32*
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @atom_lookup_voltage_object_v2(i32* %58, i32 %59)
  %61 = inttoptr i64 %60 to %union.voltage_object*
  store %union.voltage_object* %61, %union.voltage_object** %14, align 8
  %62 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %63 = icmp ne %union.voltage_object* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %66 = bitcast %union.voltage_object* %65 to %struct.TYPE_11__*
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @VOLTAGE_CONTROLLED_BY_GPIO, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %95

73:                                               ; preds = %64, %56
  br label %76

74:                                               ; preds = %36
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %95

76:                                               ; preds = %73, %55
  br label %93

77:                                               ; preds = %25
  %78 = load i32, i32* %10, align 4
  switch i32 %78, label %88 [
    i32 1, label %79
  ]

79:                                               ; preds = %77
  %80 = load %union.voltage_object_info*, %union.voltage_object_info** %13, align 8
  %81 = bitcast %union.voltage_object_info* %80 to i32*
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @atom_lookup_voltage_object_v3(i32* %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 1, i32* %4, align 4
  br label %95

87:                                               ; preds = %79
  br label %90

88:                                               ; preds = %77
  %89 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %95

90:                                               ; preds = %87
  br label %93

91:                                               ; preds = %25
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %95

93:                                               ; preds = %90, %76
  br label %94

94:                                               ; preds = %93, %3
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %91, %88, %86, %74, %72, %54
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_12__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i64 @atom_lookup_voltage_object_v1(i32*, i32) #1

declare dso_local i64 @atom_lookup_voltage_object_v2(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @atom_lookup_voltage_object_v3(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
