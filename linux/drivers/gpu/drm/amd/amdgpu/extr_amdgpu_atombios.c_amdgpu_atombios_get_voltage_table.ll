; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_voltage_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_voltage_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.atom_voltage_table = type { i32, i32, i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32 }
%union.voltage_object_info = type { i32 }
%union.voltage_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@VoltageObjectInfo = common dso_local global i32 0, align 4
@MAX_VOLTAGE_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown voltage object table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_get_voltage_table(%struct.amdgpu_device* %0, i32 %1, i32 %2, %struct.atom_voltage_table* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atom_voltage_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.voltage_object_info*, align 8
  %17 = alloca %union.voltage_object*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.atom_voltage_table* %3, %struct.atom_voltage_table** %9, align 8
  %20 = load i32, i32* @DATA, align 4
  %21 = load i32, i32* @VoltageObjectInfo, align 4
  %22 = call i32 @GetIndexIntoMasterTable(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  store %union.voltage_object* null, %union.voltage_object** %17, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__* %26, i32 %27, i64* %14, i32* %11, i32* %12, i64* %13)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %133

30:                                               ; preds = %4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %36, %37
  %39 = inttoptr i64 %38 to %union.voltage_object_info*
  store %union.voltage_object_info* %39, %union.voltage_object_info** %16, align 8
  %40 = load i32, i32* %11, align 4
  switch i32 %40, label %128 [
    i32 3, label %41
  ]

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  switch i32 %42, label %123 [
    i32 1, label %43
  ]

43:                                               ; preds = %41
  %44 = load %union.voltage_object_info*, %union.voltage_object_info** %16, align 8
  %45 = bitcast %union.voltage_object_info* %44 to i32*
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @amdgpu_atombios_lookup_voltage_object_v3(i32* %45, i32 %46, i32 %47)
  %49 = inttoptr i64 %48 to %union.voltage_object*
  store %union.voltage_object* %49, %union.voltage_object** %17, align 8
  %50 = load %union.voltage_object*, %union.voltage_object** %17, align 8
  %51 = icmp ne %union.voltage_object* %50, null
  br i1 %51, label %52, label %122

52:                                               ; preds = %43
  %53 = load %union.voltage_object*, %union.voltage_object** %17, align 8
  %54 = bitcast %union.voltage_object* %53 to %struct.TYPE_8__*
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %18, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX_VOLTAGE_ENTRIES, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %136

64:                                               ; preds = %52
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 0
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %19, align 8
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %102, %64
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %69
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %81 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %80, i32 0, i32 3
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 %79, i32* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le32_to_cpu(i32 %89)
  %91 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %92 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %91, i32 0, i32 3
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i8* %90, i8** %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %99 = bitcast %struct.TYPE_10__* %98 to i32*
  %100 = getelementptr inbounds i32, i32* %99, i64 8
  %101 = bitcast i32* %100 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %19, align 8
  br label %102

102:                                              ; preds = %75
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %69

105:                                              ; preds = %69
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @le32_to_cpu(i32 %108)
  %110 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %111 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %116 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %121 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %5, align 4
  br label %136

122:                                              ; preds = %43
  br label %127

123:                                              ; preds = %41
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %136

127:                                              ; preds = %122
  br label %132

128:                                              ; preds = %30
  %129 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %136

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %4
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %128, %123, %105, %61
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i64 @amdgpu_atombios_lookup_voltage_object_v3(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
