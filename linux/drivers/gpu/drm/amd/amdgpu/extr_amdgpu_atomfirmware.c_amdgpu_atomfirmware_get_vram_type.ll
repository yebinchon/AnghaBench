; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_get_vram_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_get_vram_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.vram_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.amdgpu_device = type { i32, %struct.amdgpu_mode_info }
%struct.amdgpu_mode_info = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%union.igp_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@integratedsysteminfo = common dso_local global %union.vram_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atomfirmware_get_vram_type(%struct.amdgpu_device* %0) #0 {
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
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  store %struct.amdgpu_mode_info* %14, %struct.amdgpu_mode_info** %4, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AMD_IS_APU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %23 = load %union.vram_info*, %union.vram_info** @integratedsysteminfo, align 8
  %24 = call i32 @get_index_into_master_table(i32 %22, %union.vram_info* %23)
  store i32 %24, i32* %5, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %27 = load %union.vram_info*, %union.vram_info** %9, align 8
  %28 = call i32 @get_index_into_master_table(i32 %26, %union.vram_info* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__* %32, i32 %33, i64* %7, i32* %10, i32* %11, i64* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %95

36:                                               ; preds = %29
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AMD_IS_APU, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %45 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %48, %49
  %51 = inttoptr i64 %50 to %union.igp_info*
  store %union.igp_info* %51, %union.igp_info** %8, align 8
  %52 = load i32, i32* %11, align 4
  switch i32 %52, label %61 [
    i32 11, label %53
  ]

53:                                               ; preds = %43
  %54 = load %union.igp_info*, %union.igp_info** %8, align 8
  %55 = bitcast %union.igp_info* %54 to %struct.TYPE_7__*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @convert_atom_mem_type_to_vram_type(%struct.amdgpu_device* %58, i32 %59)
  store i32 %60, i32* %2, align 4
  br label %96

61:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %96

62:                                               ; preds = %36
  %63 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %67, %68
  %70 = inttoptr i64 %69 to %union.vram_info*
  store %union.vram_info* %70, %union.vram_info** %9, align 8
  %71 = load i32, i32* %11, align 4
  switch i32 %71, label %94 [
    i32 3, label %72
    i32 4, label %83
  ]

72:                                               ; preds = %62
  %73 = load %union.vram_info*, %union.vram_info** %9, align 8
  %74 = bitcast %union.vram_info* %73 to %struct.TYPE_9__*
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @convert_atom_mem_type_to_vram_type(%struct.amdgpu_device* %80, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %96

83:                                               ; preds = %62
  %84 = load %union.vram_info*, %union.vram_info** %9, align 8
  %85 = bitcast %union.vram_info* %84 to %struct.TYPE_11__*
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %12, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @convert_atom_mem_type_to_vram_type(%struct.amdgpu_device* %91, i32 %92)
  store i32 %93, i32* %2, align 4
  br label %96

94:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %96

95:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %94, %83, %72, %61, %53
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @get_index_into_master_table(i32, %union.vram_info*) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @convert_atom_mem_type_to_vram_type(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
