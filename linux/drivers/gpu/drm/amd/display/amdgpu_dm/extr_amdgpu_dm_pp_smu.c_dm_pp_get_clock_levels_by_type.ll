; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_get_clock_levels_by_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_get_clock_levels_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i64 (i8*, %struct.amd_pp_simple_clock_info*)*, i64 (i8*, i32, %struct.amd_pp_clocks*)* }
%struct.amd_pp_simple_clock_info = type { i32, i32, i32, i32 }
%struct.amd_pp_clocks = type { i32 }
%struct.dm_pp_clock_levels = type { i64, i32* }

@.str = private unnamed_addr constant [53 x i8] c"DM_PPLIB: Warning: using default validation clocks!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"DM_PPLIB: Validation clocks:\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"DM_PPLIB:    engine_max_clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"DM_PPLIB:    memory_max_clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"DM_PPLIB:    level           : %d\0A\00", align 1
@DM_PP_CLOCK_TYPE_ENGINE_CLK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"DM_PPLIB: reducing engine clock level from %d to %d\0A\00", align 1
@DM_PP_CLOCK_TYPE_MEMORY_CLK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"DM_PPLIB: reducing memory clock level from %d to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pp_get_clock_levels_by_type(%struct.dc_context* %0, i32 %1, %struct.dm_pp_clock_levels* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_pp_clock_levels*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.amd_pp_clocks, align 4
  %11 = alloca %struct.amd_pp_simple_clock_info, align 4
  %12 = alloca i64, align 8
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dm_pp_clock_levels* %2, %struct.dm_pp_clock_levels** %7, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %14 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %8, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = bitcast %struct.amd_pp_clocks* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = bitcast %struct.amd_pp_simple_clock_info* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 16, i1 false)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %3
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64 (i8*, i32, %struct.amd_pp_clocks*)*, i64 (i8*, i32, %struct.amd_pp_clocks*)** %32, align 8
  %34 = icmp ne i64 (i8*, i32, %struct.amd_pp_clocks*)* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64 (i8*, i32, %struct.amd_pp_clocks*)*, i64 (i8*, i32, %struct.amd_pp_clocks*)** %40, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dc_to_pp_clock_type(i32 %43)
  %45 = call i64 %41(i8* %42, i32 %44, %struct.amd_pp_clocks* %10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %235

48:                                               ; preds = %35
  br label %76

49:                                               ; preds = %27, %3
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %55
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dc_to_pp_clock_type(i32 %66)
  %68 = call i64 @smu_get_clock_by_type(%struct.TYPE_9__* %65, i32 %67, %struct.amd_pp_clocks* %10)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %73 = call i32 @get_default_clock_levels(i32 %71, %struct.dm_pp_clock_levels* %72)
  store i32 1, i32* %4, align 4
  br label %235

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %55, %49
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @pp_to_dc_clock_levels(%struct.amd_pp_clocks* %10, %struct.dm_pp_clock_levels* %77, i32 %78)
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = icmp ne %struct.TYPE_6__* %83, null
  br i1 %84, label %85, label %109

85:                                               ; preds = %76
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64 (i8*, %struct.amd_pp_simple_clock_info*)*, i64 (i8*, %struct.amd_pp_simple_clock_info*)** %90, align 8
  %92 = icmp ne i64 (i8*, %struct.amd_pp_simple_clock_info*)* %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %85
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64 (i8*, %struct.amd_pp_simple_clock_info*)*, i64 (i8*, %struct.amd_pp_simple_clock_info*)** %98, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i64 %99(i8* %100, %struct.amd_pp_simple_clock_info* %11)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 0
  store i32 72000, i32* %105, align 4
  %106 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 1
  store i32 80000, i32* %106, align 4
  %107 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 2
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %93
  br label %135

109:                                              ; preds = %85, %76
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = icmp ne %struct.TYPE_8__* %113, null
  br i1 %114, label %115, label %134

115:                                              ; preds = %109
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 0
  %126 = call i64 @smu_get_max_high_clocks(%struct.TYPE_9__* %125, %struct.amd_pp_simple_clock_info* %11)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %130 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 0
  store i32 72000, i32* %130, align 4
  %131 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 1
  store i32 80000, i32* %131, align 4
  %132 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 2
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133, %115, %109
  br label %135

135:                                              ; preds = %134, %108
  %136 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %137 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 10
  store i32 %148, i32* %146, align 4
  %149 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %150, 10
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @DM_PP_CLOCK_TYPE_ENGINE_CLK, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %192

155:                                              ; preds = %135
  store i64 0, i64* %12, align 8
  br label %156

156:                                              ; preds = %188, %155
  %157 = load i64, i64* %12, align 8
  %158 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %159 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ult i64 %157, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %156
  %163 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %164 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %12, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %168, %170
  br i1 %171, label %172, label %187

172:                                              ; preds = %162
  %173 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %174 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %175, i64 %176)
  %178 = load i64, i64* %12, align 8
  %179 = icmp ugt i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %172
  %181 = load i64, i64* %12, align 8
  br label %183

182:                                              ; preds = %172
  br label %183

183:                                              ; preds = %182, %180
  %184 = phi i64 [ %181, %180 ], [ 1, %182 ]
  %185 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %186 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  br label %191

187:                                              ; preds = %162
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %12, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %12, align 8
  br label %156

191:                                              ; preds = %183, %156
  br label %234

192:                                              ; preds = %135
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @DM_PP_CLOCK_TYPE_MEMORY_CLK, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %233

196:                                              ; preds = %192
  store i64 0, i64* %12, align 8
  br label %197

197:                                              ; preds = %229, %196
  %198 = load i64, i64* %12, align 8
  %199 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %200 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ult i64 %198, %201
  br i1 %202, label %203, label %232

203:                                              ; preds = %197
  %204 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %205 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %12, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %11, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %209, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %203
  %214 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %215 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %12, align 8
  %218 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %216, i64 %217)
  %219 = load i64, i64* %12, align 8
  %220 = icmp ugt i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = load i64, i64* %12, align 8
  br label %224

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223, %221
  %225 = phi i64 [ %222, %221 ], [ 1, %223 ]
  %226 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %7, align 8
  %227 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  br label %232

228:                                              ; preds = %203
  br label %229

229:                                              ; preds = %228
  %230 = load i64, i64* %12, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %12, align 8
  br label %197

232:                                              ; preds = %224, %197
  br label %233

233:                                              ; preds = %232, %192
  br label %234

234:                                              ; preds = %233, %191
  store i32 1, i32* %4, align 4
  br label %235

235:                                              ; preds = %234, %70, %47
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dc_to_pp_clock_type(i32) #2

declare dso_local i64 @smu_get_clock_by_type(%struct.TYPE_9__*, i32, %struct.amd_pp_clocks*) #2

declare dso_local i32 @get_default_clock_levels(i32, %struct.dm_pp_clock_levels*) #2

declare dso_local i32 @pp_to_dc_clock_levels(%struct.amd_pp_clocks*, %struct.dm_pp_clock_levels*, i32) #2

declare dso_local i32 @DRM_INFO(i8*, ...) #2

declare dso_local i64 @smu_get_max_high_clocks(%struct.TYPE_9__*, %struct.amd_pp_simple_clock_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
