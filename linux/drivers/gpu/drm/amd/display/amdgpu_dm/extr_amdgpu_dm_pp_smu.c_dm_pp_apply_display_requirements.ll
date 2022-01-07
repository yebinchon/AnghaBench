; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_apply_display_requirements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_apply_display_requirements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.smu_context }
%struct.TYPE_11__ = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_12__*)* }
%struct.smu_context = type { i32 }
%struct.dm_pp_display_configuration = type { i32, i32, i32, i32, i32, i32, %struct.dm_pp_single_disp_config*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_pp_single_disp_config = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pp_apply_display_requirements(%struct.dc_context* %0, %struct.dm_pp_display_configuration* %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.dm_pp_display_configuration*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_pp_single_disp_config*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.dm_pp_display_configuration* %1, %struct.dm_pp_display_configuration** %4, align 8
  %9 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %10 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %5, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 2
  store %struct.smu_context* %13, %struct.smu_context** %6, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %234

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = call i32 @memset(%struct.TYPE_12__* %22, i32 0, i32 96)
  %24 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %25 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %24, i32 0, i32 15
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 20
  store i32 %26, i32* %30, align 4
  %31 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %32 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 19
  store i32 %33, i32* %37, align 8
  %38 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %39 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 18
  store i32 %40, i32* %44, align 4
  %45 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %46 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 17
  store i32 %47, i32* %51, align 8
  %52 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %53 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  %59 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %60 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %67 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 10
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 8
  %74 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %75 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %76, 10
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  store i32 %77, i32* %81, align 4
  %82 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %83 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 10
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  store i32 %85, i32* %89, align 8
  %90 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %91 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sdiv i32 %92, 10
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 5
  store i32 %93, i32* %97, align 4
  %98 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %99 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = sdiv i32 %100, 10
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 6
  store i32 %101, i32* %105, align 8
  %106 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %107 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %106, i32 0, i32 11
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 16
  store i32 %108, i32* %112, align 4
  %113 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %114 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 15
  store i32 %115, i32* %119, align 8
  %120 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %121 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %122, 10
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 7
  store i32 %123, i32* %127, align 4
  %128 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %129 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 14
  store i32 %130, i32* %134, align 4
  %135 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %136 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 13
  store i32 %137, i32* %141, align 8
  %142 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %143 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 12
  store i32 %144, i32* %148, align 4
  %149 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %150 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %149, i32 0, i32 6
  %151 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %150, align 8
  %152 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %151, i64 0
  %153 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 11
  store i32 %154, i32* %158, align 8
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 8
  store i32 -1, i32* %162, align 8
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 10
  store i64 0, i64* %166, align 8
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %193, %19
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %170 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %196

173:                                              ; preds = %167
  %174 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %175 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %174, i32 0, i32 6
  %176 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %176, i64 %178
  store %struct.dm_pp_single_disp_config* %179, %struct.dm_pp_single_disp_config** %8, align 8
  %180 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %8, align 8
  %181 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 1
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %185 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 9
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  store i64 %183, i64* %192, align 8
  br label %193

193:                                              ; preds = %173
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  br label %167

196:                                              ; preds = %167
  %197 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %198 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = icmp ne %struct.TYPE_9__* %200, null
  br i1 %201, label %202, label %225

202:                                              ; preds = %196
  %203 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %204 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %207, align 8
  %209 = icmp ne i32 (i32, %struct.TYPE_12__*)* %208, null
  br i1 %209, label %210, label %225

210:                                              ; preds = %202
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %212 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %215, align 8
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %218 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %222 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = call i32 %216(i32 %220, %struct.TYPE_12__* %223)
  br label %231

225:                                              ; preds = %202, %196
  %226 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %227 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %228 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = call i32 @smu_display_configuration_change(%struct.smu_context* %226, %struct.TYPE_12__* %229)
  br label %231

231:                                              ; preds = %225, %210
  %232 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %233 = call i32 @amdgpu_pm_compute_clocks(%struct.amdgpu_device* %232)
  br label %234

234:                                              ; preds = %231, %2
  ret i32 1
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @smu_display_configuration_change(%struct.smu_context*, %struct.TYPE_12__*) #1

declare dso_local i32 @amdgpu_pm_compute_clocks(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
