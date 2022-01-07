; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_fw_reserve_vram_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_fw_reserve_vram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i64, %struct.amdgpu_bo*, i32* }
%struct.amdgpu_bo = type { %struct.TYPE_10__, %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.amdgpu_bo_param = type { i64, i32, i32*, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS = common dso_local global i32 0, align 4
@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_ttm_fw_reserve_vram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ttm_fw_reserve_vram_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.ttm_operation_ctx, align 4
  %5 = alloca %struct.amdgpu_bo_param, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.amdgpu_bo*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %12 = bitcast %struct.ttm_operation_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = call i32 @memset(%struct.amdgpu_bo_param* %5, i32 0, i32 40)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 5
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %34 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %36 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS, align 4
  %37 = or i32 %35, %36
  %38 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @ttm_bo_type_kernel, align 4
  %40 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %47, align 8
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %178

53:                                               ; preds = %1
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %178

60:                                               ; preds = %53
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %61, %struct.amdgpu_bo_param* %5, %struct.amdgpu_bo** %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %197

69:                                               ; preds = %60
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %72, align 8
  %74 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %73, i32 0)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %192

78:                                               ; preds = %69
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %81, align 8
  store %struct.amdgpu_bo* %82, %struct.amdgpu_bo** %11, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = call i64 @ALIGN(i64 %83, i32 %84)
  store i64 %85, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %116, %78
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %89 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %86
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @PAGE_SHIFT, align 8
  %96 = ashr i64 %94, %95
  %97 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %98 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %97, i32 0, i32 2
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i64 %96, i64* %103, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* @PAGE_SHIFT, align 8
  %108 = ashr i64 %106, %107
  %109 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %110 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i64 %108, i64* %115, align 8
  br label %116

116:                                              ; preds = %93
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %86

119:                                              ; preds = %86
  %120 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %121 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %120, i32 0, i32 0
  %122 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %123 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = call i32 @ttm_bo_mem_put(%struct.TYPE_10__* %121, i32* %124)
  %126 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %127 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %126, i32 0, i32 0
  %128 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %129 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %128, i32 0, i32 1
  %130 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %131 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = call i32 @ttm_bo_mem_space(%struct.TYPE_10__* %127, %struct.TYPE_11__* %129, i32* %132, %struct.ttm_operation_ctx* %4)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %119
  br label %186

137:                                              ; preds = %119
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %140, align 8
  %142 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %150, %154
  %156 = call i32 @amdgpu_bo_pin_restricted(%struct.amdgpu_bo* %141, i32 %142, i64 %146, i64 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %137
  br label %186

160:                                              ; preds = %137
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %162 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %163, align 8
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 3
  %168 = call i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %164, i32** %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %180

172:                                              ; preds = %160
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %175, align 8
  %177 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %176)
  br label %178

178:                                              ; preds = %172, %53, %1
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %2, align 4
  br label %205

180:                                              ; preds = %171
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %183, align 8
  %185 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %184)
  br label %186

186:                                              ; preds = %180, %159, %136
  %187 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %188 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  %190 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %189, align 8
  %191 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %190)
  br label %192

192:                                              ; preds = %186, %77
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %195)
  br label %197

197:                                              ; preds = %192, %68
  %198 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %199 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  store i32* null, i32** %200, align 8
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %202 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %203, align 8
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %197, %178
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #2

declare dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**) #2

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #2

declare dso_local i64 @ALIGN(i64, i32) #2

declare dso_local i32 @ttm_bo_mem_put(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @ttm_bo_mem_space(%struct.TYPE_10__*, %struct.TYPE_11__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @amdgpu_bo_pin_restricted(%struct.amdgpu_bo*, i32, i64, i64) #2

declare dso_local i32 @amdgpu_bo_kmap(%struct.amdgpu_bo*, i32**) #2

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #2

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #2

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
