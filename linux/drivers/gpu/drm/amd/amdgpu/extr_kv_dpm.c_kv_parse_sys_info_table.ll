; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_parse_sys_info_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_parse_sys_info_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_11__, %struct.amdgpu_mode_info }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.amdgpu_mode_info = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.kv_power_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32 }
%union.igp_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@IntegratedSystemInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported IGP table: %d %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"The htcTmpLmt should be larger than htcHystLmt.\0A\00", align 1
@KV_NUM_NBPSTATES = common dso_local global i32 0, align 4
@SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_parse_sys_info_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_parse_sys_info_table(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca %struct.amdgpu_mode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.igp_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %12)
  store %struct.kv_power_info* %13, %struct.kv_power_info** %4, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  store %struct.amdgpu_mode_info* %15, %struct.amdgpu_mode_info** %5, align 8
  %16 = load i32, i32* @DATA, align 4
  %17 = load i32, i32* @IntegratedSystemInfo, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__* %21, i32 %22, i32* null, i32* %8, i32* %9, i64* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %209

25:                                               ; preds = %1
  %26 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %5, align 8
  %27 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to %union.igp_info*
  store %union.igp_info* %33, %union.igp_info** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 8
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %210

42:                                               ; preds = %25
  %43 = load %union.igp_info*, %union.igp_info** %7, align 8
  %44 = bitcast %union.igp_info* %43 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %union.igp_info*, %union.igp_info** %7, align 8
  %52 = bitcast %union.igp_info* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %57 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %union.igp_info*, %union.igp_info** %7, align 8
  %60 = bitcast %union.igp_info* %59 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %65 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 9
  store i32 %63, i32* %66, align 8
  %67 = load %union.igp_info*, %union.igp_info** %7, align 8
  %68 = bitcast %union.igp_info* %67 to %struct.TYPE_8__*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %42
  %73 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %74 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 203, i32* %75, align 8
  br label %84

76:                                               ; preds = %42
  %77 = load %union.igp_info*, %union.igp_info** %7, align 8
  %78 = bitcast %union.igp_info* %77 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %82 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %76, %72
  %85 = load %union.igp_info*, %union.igp_info** %7, align 8
  %86 = bitcast %union.igp_info* %85 to %struct.TYPE_8__*
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %92 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  store i32 5, i32* %93, align 4
  br label %102

94:                                               ; preds = %84
  %95 = load %union.igp_info*, %union.igp_info** %7, align 8
  %96 = bitcast %union.igp_info* %95 to %struct.TYPE_8__*
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %100 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %90
  %103 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %104 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %108 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp sle i32 %106, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %102
  %115 = load %union.igp_info*, %union.igp_info** %7, align 8
  %116 = bitcast %union.igp_info* %115 to %struct.TYPE_8__*
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @le32_to_cpu(i32 %118)
  %120 = and i32 %119, 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %124 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  store i32 1, i32* %125, align 8
  br label %130

126:                                              ; preds = %114
  %127 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %128 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  store i32 0, i32* %129, align 8
  br label %130

130:                                              ; preds = %126, %122
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %168, %130
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @KV_NUM_NBPSTATES, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  %136 = load %union.igp_info*, %union.igp_info** %7, align 8
  %137 = bitcast %union.igp_info* %136 to %struct.TYPE_8__*
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le32_to_cpu(i32 %143)
  %145 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %146 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %144, i32* %151, align 4
  %152 = load %union.igp_info*, %union.igp_info** %7, align 8
  %153 = bitcast %union.igp_info* %152 to %struct.TYPE_8__*
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @le32_to_cpu(i32 %159)
  %161 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %162 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %160, i32* %167, align 4
  br label %168

168:                                              ; preds = %135
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %131

171:                                              ; preds = %131
  %172 = load %union.igp_info*, %union.igp_info** %7, align 8
  %173 = bitcast %union.igp_info* %172 to %struct.TYPE_8__*
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @le32_to_cpu(i32 %175)
  %177 = load i32, i32* @SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %182 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %171
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %185 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %186 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 8
  %188 = load %union.igp_info*, %union.igp_info** %7, align 8
  %189 = bitcast %union.igp_info* %188 to %struct.TYPE_8__*
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @sumo_construct_sclk_voltage_mapping_table(%struct.amdgpu_device* %184, i32* %187, i32 %191)
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %194 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %195 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 7
  %197 = load %union.igp_info*, %union.igp_info** %7, align 8
  %198 = bitcast %union.igp_info* %197 to %struct.TYPE_8__*
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @sumo_construct_vid_mapping_table(%struct.amdgpu_device* %193, i32* %196, i32 %200)
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %203 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %204 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = call i32 @kv_construct_max_power_limits_table(%struct.amdgpu_device* %202, i32* %207)
  br label %209

209:                                              ; preds = %183, %1
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %209, %36
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_12__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @sumo_construct_sclk_voltage_mapping_table(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @sumo_construct_vid_mapping_table(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @kv_construct_max_power_limits_table(%struct.amdgpu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
