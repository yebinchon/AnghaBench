; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_svi2_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_svi2_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%union.voltage_object_info = type { i32 }
%union.voltage_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@VoltageObjectInfo = common dso_local global i32 0, align 4
@VOLTAGE_OBJ_SVID2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown voltage object table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_svi2_info(%struct.radeon_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %union.voltage_object_info*, align 8
  %16 = alloca %union.voltage_object*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @DATA, align 4
  %18 = load i32, i32* @VoltageObjectInfo, align 4
  %19 = call i32 @GetIndexIntoMasterTable(i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  store %union.voltage_object* null, %union.voltage_object** %16, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @atom_parse_data_header(%struct.TYPE_8__* %23, i32 %24, i64* %14, i32* %11, i32* %12, i64* %13)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = add nsw i64 %33, %34
  %36 = inttoptr i64 %35 to %union.voltage_object_info*
  store %union.voltage_object_info* %36, %union.voltage_object_info** %15, align 8
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %71 [
    i32 3, label %38
  ]

38:                                               ; preds = %27
  %39 = load i32, i32* %12, align 4
  switch i32 %39, label %66 [
    i32 1, label %40
  ]

40:                                               ; preds = %38
  %41 = load %union.voltage_object_info*, %union.voltage_object_info** %15, align 8
  %42 = bitcast %union.voltage_object_info* %41 to i32*
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @VOLTAGE_OBJ_SVID2, align 4
  %45 = call i64 @atom_lookup_voltage_object_v3(i32* %42, i32 %43, i32 %44)
  %46 = inttoptr i64 %45 to %union.voltage_object*
  store %union.voltage_object* %46, %union.voltage_object** %16, align 8
  %47 = load %union.voltage_object*, %union.voltage_object** %16, align 8
  %48 = icmp ne %union.voltage_object* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load %union.voltage_object*, %union.voltage_object** %16, align 8
  %51 = bitcast %union.voltage_object* %50 to %struct.TYPE_7__*
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %union.voltage_object*, %union.voltage_object** %16, align 8
  %57 = bitcast %union.voltage_object* %56 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %65

62:                                               ; preds = %40
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %77

65:                                               ; preds = %49
  br label %70

66:                                               ; preds = %38
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %77

70:                                               ; preds = %65
  br label %75

71:                                               ; preds = %27
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %77

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %71, %66, %62
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_8__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i64 @atom_lookup_voltage_object_v3(i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
