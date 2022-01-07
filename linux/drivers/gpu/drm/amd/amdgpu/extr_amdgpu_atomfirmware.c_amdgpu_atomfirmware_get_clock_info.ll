; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_get_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_get_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_mode_info, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.amdgpu_mode_info = type { %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i8*, %struct.amdgpu_pll, %struct.amdgpu_pll }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i64, i64, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%union.firmware_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%union.smu_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%union.umc_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@firmwareinfo = common dso_local global i32 0, align 4
@smu_info = common dso_local global i32 0, align 4
@umc_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atomfirmware_get_clock_info(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_mode_info*, align 8
  %4 = alloca %struct.amdgpu_pll*, align 8
  %5 = alloca %struct.amdgpu_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.firmware_info*, align 8
  %12 = alloca %union.smu_info*, align 8
  %13 = alloca %union.umc_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  store %struct.amdgpu_mode_info* %15, %struct.amdgpu_mode_info** %3, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store %struct.amdgpu_pll* %18, %struct.amdgpu_pll** %4, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store %struct.amdgpu_pll* %21, %struct.amdgpu_pll** %5, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %25 = load i32, i32* @firmwareinfo, align 4
  %26 = call i32 @get_index_into_master_table(i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__* %29, i32 %30, i32* null, i32* %6, i32* %7, i64* %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %1
  %34 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  %41 = inttoptr i64 %40 to %union.firmware_info*
  store %union.firmware_info* %41, %union.firmware_info** %11, align 8
  %42 = load %union.firmware_info*, %union.firmware_info** %11, align 8
  %43 = bitcast %union.firmware_info* %42 to %struct.TYPE_9__*
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le32_to_cpu(i32 %45)
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load %union.firmware_info*, %union.firmware_info** %11, align 8
  %51 = bitcast %union.firmware_info* %50 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le32_to_cpu(i32 %53)
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load %union.firmware_info*, %union.firmware_info** %11, align 8
  %73 = bitcast %union.firmware_info* %72 to %struct.TYPE_9__*
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le32_to_cpu(i32 %75)
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %33, %1
  %81 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %82 = load i32, i32* @smu_info, align 4
  %83 = call i32 @get_index_into_master_table(i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %85 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__* %86, i32 %87, i32* null, i32* %6, i32* %7, i64* %8)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %80
  %91 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %92 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = add nsw i64 %95, %96
  %98 = inttoptr i64 %97 to %union.smu_info*
  store %union.smu_info* %98, %union.smu_info** %12, align 8
  %99 = load %union.smu_info*, %union.smu_info** %12, align 8
  %100 = bitcast %union.smu_info* %99 to %struct.TYPE_10__*
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @le32_to_cpu(i32 %102)
  %104 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %4, align 8
  %105 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %104, i32 0, i32 8
  store i8* %103, i8** %105, align 8
  %106 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %4, align 8
  %107 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %106, i32 0, i32 7
  store i64 0, i64* %107, align 8
  %108 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %4, align 8
  %109 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %4, align 8
  %111 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %4, align 8
  %113 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %112, i32 0, i32 2
  store i32 2, i32* %113, align 8
  %114 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %4, align 8
  %115 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %114, i32 0, i32 3
  store i32 255, i32* %115, align 4
  %116 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %4, align 8
  %117 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %116, i32 0, i32 4
  store i32 4, i32* %117, align 8
  %118 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %4, align 8
  %119 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %118, i32 0, i32 5
  store i32 255, i32* %119, align 4
  %120 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %4, align 8
  %121 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %120, i32 0, i32 6
  store i64 0, i64* %121, align 8
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %90, %80
  %123 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %124 = load i32, i32* @umc_info, align 4
  %125 = call i32 @get_index_into_master_table(i32 %123, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %127 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__* %128, i32 %129, i32* null, i32* %6, i32* %7, i64* %8)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %164

132:                                              ; preds = %122
  %133 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %134 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = add nsw i64 %137, %138
  %140 = inttoptr i64 %139 to %union.umc_info*
  store %union.umc_info* %140, %union.umc_info** %13, align 8
  %141 = load %union.umc_info*, %union.umc_info** %13, align 8
  %142 = bitcast %union.umc_info* %141 to %struct.TYPE_11__*
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @le32_to_cpu(i32 %144)
  %146 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %5, align 8
  %147 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %146, i32 0, i32 8
  store i8* %145, i8** %147, align 8
  %148 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %5, align 8
  %149 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %148, i32 0, i32 7
  store i64 0, i64* %149, align 8
  %150 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %5, align 8
  %151 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %5, align 8
  %153 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %152, i32 0, i32 1
  store i32 1, i32* %153, align 4
  %154 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %5, align 8
  %155 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %154, i32 0, i32 2
  store i32 2, i32* %155, align 8
  %156 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %5, align 8
  %157 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %156, i32 0, i32 3
  store i32 255, i32* %157, align 4
  %158 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %5, align 8
  %159 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %158, i32 0, i32 4
  store i32 4, i32* %159, align 8
  %160 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %5, align 8
  %161 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %160, i32 0, i32 5
  store i32 255, i32* %161, align 4
  %162 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %5, align 8
  %163 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %162, i32 0, i32 6
  store i64 0, i64* %163, align 8
  store i32 0, i32* %9, align 4
  br label %164

164:                                              ; preds = %132, %122
  %165 = load i32, i32* %9, align 4
  ret i32 %165
}

declare dso_local i32 @get_index_into_master_table(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
