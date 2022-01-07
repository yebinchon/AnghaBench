; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_get_vram_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_get_vram_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.vram_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.amdgpu_device = type { i32, %struct.amdgpu_mode_info }
%struct.amdgpu_mode_info = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%union.igp_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@integratedsysteminfo = common dso_local global %union.vram_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atomfirmware_get_vram_width(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_mode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.igp_info*, align 8
  %9 = alloca %union.vram_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  store %struct.amdgpu_mode_info* %15, %struct.amdgpu_mode_info** %4, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AMD_IS_APU, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %24 = load %union.vram_info*, %union.vram_info** @integratedsysteminfo, align 8
  %25 = call i32 @get_index_into_master_table(i32 %23, %union.vram_info* %24)
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %28 = load %union.vram_info*, %union.vram_info** %9, align 8
  %29 = call i32 @get_index_into_master_table(i32 %27, %union.vram_info* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__* %33, i32 %34, i64* %7, i32* %12, i32* %13, i64* %6)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %111

37:                                               ; preds = %30
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AMD_IS_APU, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %37
  %45 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %46 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %49, %50
  %52 = inttoptr i64 %51 to %union.igp_info*
  store %union.igp_info* %52, %union.igp_info** %8, align 8
  %53 = load i32, i32* %13, align 4
  switch i32 %53, label %61 [
    i32 11, label %54
  ]

54:                                               ; preds = %44
  %55 = load %union.igp_info*, %union.igp_info** %8, align 8
  %56 = bitcast %union.igp_info* %55 to %struct.TYPE_7__*
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, 64
  store i32 %60, i32* %2, align 4
  br label %112

61:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %112

62:                                               ; preds = %37
  %63 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %67, %68
  %70 = inttoptr i64 %69 to %union.vram_info*
  store %union.vram_info* %70, %union.vram_info** %9, align 8
  %71 = load i32, i32* %13, align 4
  switch i32 %71, label %110 [
    i32 3, label %72
    i32 4, label %91
  ]

72:                                               ; preds = %62
  %73 = load %union.vram_info*, %union.vram_info** %9, align 8
  %74 = bitcast %union.vram_info* %73 to %struct.TYPE_9__*
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = load %union.vram_info*, %union.vram_info** %9, align 8
  %81 = bitcast %union.vram_info* %80 to %struct.TYPE_9__*
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 1, %88
  %90 = mul nsw i32 %87, %89
  store i32 %90, i32* %2, align 4
  br label %112

91:                                               ; preds = %62
  %92 = load %union.vram_info*, %union.vram_info** %9, align 8
  %93 = bitcast %union.vram_info* %92 to %struct.TYPE_11__*
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load %union.vram_info*, %union.vram_info** %9, align 8
  %100 = bitcast %union.vram_info* %99 to %struct.TYPE_11__*
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 1, %107
  %109 = mul nsw i32 %106, %108
  store i32 %109, i32* %2, align 4
  br label %112

110:                                              ; preds = %62
  store i32 0, i32* %2, align 4
  br label %112

111:                                              ; preds = %30
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %110, %91, %72, %61, %54
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @get_index_into_master_table(i32, %union.vram_info*) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__*, i32, i64*, i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
