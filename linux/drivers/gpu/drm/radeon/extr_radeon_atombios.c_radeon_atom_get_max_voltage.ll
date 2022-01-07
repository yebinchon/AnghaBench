; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_max_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_max_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%union.voltage_object_info = type { i32 }
%union.voltage_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_13__ }

@DATA = common dso_local global i32 0, align 4
@VoltageObjectInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown voltage object table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_max_voltage(%struct.radeon_device* %0, i32 %1, i32* %2) #0 {
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
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @DATA, align 4
  %19 = load i32, i32* @VoltageObjectInfo, align 4
  %20 = call i32 @GetIndexIntoMasterTable(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  store %union.voltage_object* null, %union.voltage_object** %14, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @atom_parse_data_header(%struct.TYPE_14__* %24, i32 %25, i32* %12, i32* %9, i32* %10, i32* %11)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %132

28:                                               ; preds = %3
  %29 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %union.voltage_object_info*
  store %union.voltage_object_info* %38, %union.voltage_object_info** %13, align 8
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %127 [
    i32 1, label %40
    i32 2, label %91
  ]

40:                                               ; preds = %28
  %41 = load %union.voltage_object_info*, %union.voltage_object_info** %13, align 8
  %42 = bitcast %union.voltage_object_info* %41 to i32*
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @atom_lookup_voltage_object_v1(i32* %42, i32 %43)
  %45 = inttoptr i64 %44 to %union.voltage_object*
  store %union.voltage_object* %45, %union.voltage_object** %14, align 8
  %46 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %47 = icmp ne %union.voltage_object* %46, null
  br i1 %47, label %48, label %90

48:                                               ; preds = %40
  %49 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %50 = bitcast %union.voltage_object* %49 to %struct.TYPE_9__*
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %15, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 2
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = mul nsw i32 %65, %69
  %71 = add nsw i32 %61, %70
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %89

73:                                               ; preds = %48
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = mul nsw i32 %81, %85
  %87 = add nsw i32 %77, %86
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %73, %57
  store i32 0, i32* %4, align 4
  br label %135

90:                                               ; preds = %40
  br label %131

91:                                               ; preds = %28
  %92 = load %union.voltage_object_info*, %union.voltage_object_info** %13, align 8
  %93 = bitcast %union.voltage_object_info* %92 to i32*
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @atom_lookup_voltage_object_v2(i32* %93, i32 %94)
  %96 = inttoptr i64 %95 to %union.voltage_object*
  store %union.voltage_object* %96, %union.voltage_object** %14, align 8
  %97 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %98 = icmp ne %union.voltage_object* %97, null
  br i1 %98, label %99, label %126

99:                                               ; preds = %91
  %100 = load %union.voltage_object*, %union.voltage_object** %14, align 8
  %101 = bitcast %union.voltage_object* %100 to %struct.TYPE_10__*
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %16, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %99
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = mul i64 4, %116
  %118 = getelementptr inbounds i32, i32* %111, i64 %117
  %119 = bitcast i32* %118 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %17, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le16_to_cpu(i32 %122)
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  store i32 0, i32* %4, align 4
  br label %135

125:                                              ; preds = %99
  br label %126

126:                                              ; preds = %125, %91
  br label %131

127:                                              ; preds = %28
  %128 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %135

131:                                              ; preds = %126, %90
  br label %132

132:                                              ; preds = %131, %3
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %132, %127, %107, %89
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @atom_lookup_voltage_object_v1(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @atom_lookup_voltage_object_v2(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
