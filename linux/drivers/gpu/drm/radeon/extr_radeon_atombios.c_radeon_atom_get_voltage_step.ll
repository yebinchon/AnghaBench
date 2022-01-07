; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_voltage_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_voltage_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%union.voltage_object_info = type { i32 }
%union.voltage_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@VoltageObjectInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown voltage object table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_voltage_step(%struct.radeon_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.voltage_object_info*, align 8
  %14 = alloca %union.voltage_object*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @DATA, align 4
  %17 = load i32, i32* @VoltageObjectInfo, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  store %union.voltage_object* null, %union.voltage_object** %14, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @atom_parse_data_header(%struct.TYPE_8__* %22, i32 %23, i32* %12, i32* %9, i32* %10, i32* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %3
  %27 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %union.voltage_object_info*
  store %union.voltage_object_info* %36, %union.voltage_object_info** %13, align 8
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %74 [
    i32 1, label %38
    i32 2, label %71
  ]

38:                                               ; preds = %26
  %39 = load %union.voltage_object_info*, %union.voltage_object_info** %13, align 8
  %40 = bitcast %union.voltage_object_info* %39 to i32*
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @atom_lookup_voltage_object_v1(i32* %40, i32 %41)
  %43 = inttoptr i64 %42 to %union.voltage_object*
  store %union.voltage_object* %43, %union.voltage_object** %14, align 8
  %44 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %45 = icmp ne %union.voltage_object* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %38
  %47 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %48 = bitcast %union.voltage_object* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %15, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = add nsw i32 %59, 1
  %61 = sdiv i32 %60, 2
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %69

63:                                               ; preds = %46
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %55
  store i32 0, i32* %4, align 4
  br label %82

70:                                               ; preds = %38
  br label %78

71:                                               ; preds = %26
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %82

74:                                               ; preds = %26
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %82

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %3
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %74, %71, %69
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_8__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @atom_lookup_voltage_object_v1(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
