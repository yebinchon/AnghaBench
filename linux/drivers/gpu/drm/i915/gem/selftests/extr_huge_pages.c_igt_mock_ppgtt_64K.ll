; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_mock_ppgtt_64K.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_mock_ppgtt_64K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ppgtt = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.object_info = type { i32, i32, i32 }
%struct.i915_vma = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.object_info.0 = type { i32, i32, i32 }

@SZ_64K = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE_64K = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE_4K = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i32 0, align 4
@SZ_128K = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE_2M = common dso_local global i32 0, align 4
@PIN_OFFSET_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"node.start(%llx) not aligned to 2M\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"node.size(%llx) not aligned to 2M\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"gtt=%u, expected=%u, i=%d, single=%s\0A\00", align 1
@I915_MM_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_mock_ppgtt_64K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_mock_ppgtt_64K(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i915_ppgtt*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca [10 x %struct.object_info], align 16
  %8 = alloca %struct.i915_vma*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.i915_ppgtt*
  store %struct.i915_ppgtt* %17, %struct.i915_ppgtt** %4, align 8
  %18 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %19 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %20, align 8
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %5, align 8
  %22 = getelementptr inbounds [10 x %struct.object_info], [10 x %struct.object_info]* %7, i64 0, i64 0
  %23 = getelementptr inbounds %struct.object_info, %struct.object_info* %22, i32 0, i32 0
  %24 = load i32, i32* @SZ_64K, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.object_info, %struct.object_info* %22, i32 0, i32 1
  %26 = load i32, i32* @I915_GTT_PAGE_SIZE_64K, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.object_info, %struct.object_info* %22, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.object_info, %struct.object_info* %22, i64 1
  %29 = getelementptr inbounds %struct.object_info, %struct.object_info* %28, i32 0, i32 0
  %30 = load i32, i32* @SZ_64K, align 4
  %31 = load i32, i32* @SZ_4K, align 4
  %32 = add i32 %30, %31
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.object_info, %struct.object_info* %28, i32 0, i32 1
  %34 = load i32, i32* @I915_GTT_PAGE_SIZE_4K, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.object_info, %struct.object_info* %28, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.object_info, %struct.object_info* %28, i64 1
  %37 = getelementptr inbounds %struct.object_info, %struct.object_info* %36, i32 0, i32 0
  %38 = load i32, i32* @SZ_64K, align 4
  %39 = load i32, i32* @SZ_4K, align 4
  %40 = sub i32 %38, %39
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds %struct.object_info, %struct.object_info* %36, i32 0, i32 1
  %42 = load i32, i32* @I915_GTT_PAGE_SIZE_4K, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.object_info, %struct.object_info* %36, i32 0, i32 2
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.object_info, %struct.object_info* %36, i64 1
  %45 = getelementptr inbounds %struct.object_info, %struct.object_info* %44, i32 0, i32 0
  %46 = load i32, i32* @SZ_2M, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.object_info, %struct.object_info* %44, i32 0, i32 1
  %48 = load i32, i32* @I915_GTT_PAGE_SIZE_64K, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.object_info, %struct.object_info* %44, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.object_info, %struct.object_info* %44, i64 1
  %51 = getelementptr inbounds %struct.object_info, %struct.object_info* %50, i32 0, i32 0
  %52 = load i32, i32* @SZ_2M, align 4
  %53 = load i32, i32* @SZ_4K, align 4
  %54 = sub i32 %52, %53
  store i32 %54, i32* %51, align 4
  %55 = getelementptr inbounds %struct.object_info, %struct.object_info* %50, i32 0, i32 1
  %56 = load i32, i32* @I915_GTT_PAGE_SIZE_4K, align 4
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds %struct.object_info, %struct.object_info* %50, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.object_info, %struct.object_info* %50, i64 1
  %59 = getelementptr inbounds %struct.object_info, %struct.object_info* %58, i32 0, i32 0
  %60 = load i32, i32* @SZ_2M, align 4
  %61 = load i32, i32* @SZ_4K, align 4
  %62 = add i32 %60, %61
  store i32 %62, i32* %59, align 4
  %63 = getelementptr inbounds %struct.object_info, %struct.object_info* %58, i32 0, i32 1
  %64 = load i32, i32* @I915_GTT_PAGE_SIZE_64K, align 4
  %65 = load i32, i32* @I915_GTT_PAGE_SIZE_4K, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %63, align 4
  %67 = getelementptr inbounds %struct.object_info, %struct.object_info* %58, i32 0, i32 2
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.object_info, %struct.object_info* %58, i64 1
  %69 = getelementptr inbounds %struct.object_info, %struct.object_info* %68, i32 0, i32 0
  %70 = load i32, i32* @SZ_2M, align 4
  %71 = load i32, i32* @SZ_64K, align 4
  %72 = add i32 %70, %71
  store i32 %72, i32* %69, align 4
  %73 = getelementptr inbounds %struct.object_info, %struct.object_info* %68, i32 0, i32 1
  %74 = load i32, i32* @I915_GTT_PAGE_SIZE_64K, align 4
  store i32 %74, i32* %73, align 4
  %75 = getelementptr inbounds %struct.object_info, %struct.object_info* %68, i32 0, i32 2
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.object_info, %struct.object_info* %68, i64 1
  %77 = getelementptr inbounds %struct.object_info, %struct.object_info* %76, i32 0, i32 0
  %78 = load i32, i32* @SZ_2M, align 4
  %79 = load i32, i32* @SZ_64K, align 4
  %80 = sub i32 %78, %79
  store i32 %80, i32* %77, align 4
  %81 = getelementptr inbounds %struct.object_info, %struct.object_info* %76, i32 0, i32 1
  %82 = load i32, i32* @I915_GTT_PAGE_SIZE_64K, align 4
  store i32 %82, i32* %81, align 4
  %83 = getelementptr inbounds %struct.object_info, %struct.object_info* %76, i32 0, i32 2
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.object_info, %struct.object_info* %76, i64 1
  %85 = getelementptr inbounds %struct.object_info, %struct.object_info* %84, i32 0, i32 0
  %86 = load i32, i32* @SZ_64K, align 4
  store i32 %86, i32* %85, align 4
  %87 = getelementptr inbounds %struct.object_info, %struct.object_info* %84, i32 0, i32 1
  %88 = load i32, i32* @I915_GTT_PAGE_SIZE_4K, align 4
  store i32 %88, i32* %87, align 4
  %89 = getelementptr inbounds %struct.object_info, %struct.object_info* %84, i32 0, i32 2
  %90 = load i32, i32* @SZ_2M, align 4
  store i32 %90, i32* %89, align 4
  %91 = getelementptr inbounds %struct.object_info, %struct.object_info* %84, i64 1
  %92 = getelementptr inbounds %struct.object_info, %struct.object_info* %91, i32 0, i32 0
  %93 = load i32, i32* @SZ_128K, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds %struct.object_info, %struct.object_info* %91, i32 0, i32 1
  %95 = load i32, i32* @I915_GTT_PAGE_SIZE_4K, align 4
  store i32 %95, i32* %94, align 4
  %96 = getelementptr inbounds %struct.object_info, %struct.object_info* %91, i32 0, i32 2
  %97 = load i32, i32* @SZ_2M, align 4
  %98 = load i32, i32* @SZ_64K, align 4
  %99 = sub i32 %97, %98
  store i32 %99, i32* %96, align 4
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %101 = load i32, i32* @I915_GTT_PAGE_SIZE_64K, align 4
  %102 = call i32 @HAS_PAGE_SIZES(%struct.drm_i915_private* %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %304

105:                                              ; preds = %1
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %285, %105
  %107 = load i32, i32* %9, align 4
  %108 = getelementptr inbounds [10 x %struct.object_info], [10 x %struct.object_info]* %7, i64 0, i64 0
  %109 = bitcast %struct.object_info* %108 to %struct.object_info.0*
  %110 = call i32 @ARRAY_SIZE(%struct.object_info.0* %109)
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %288

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x %struct.object_info], [10 x %struct.object_info]* %7, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.object_info, %struct.object_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [10 x %struct.object_info], [10 x %struct.object_info]* %7, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.object_info, %struct.object_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [10 x %struct.object_info], [10 x %struct.object_info]* %7, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.object_info, %struct.object_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* @PIN_USER, align 4
  store i32 %128, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %281, %112
  %130 = load i32, i32* %10, align 4
  %131 = icmp sle i32 %130, 1
  br i1 %131, label %132, label %284

132:                                              ; preds = %129
  %133 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call %struct.i915_vma* @fake_huge_pages_object(%struct.drm_i915_private* %133, i32 %134, i32 %139)
  %141 = bitcast %struct.i915_vma* %140 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %141, %struct.drm_i915_gem_object** %6, align 8
  %142 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %143 = bitcast %struct.drm_i915_gem_object* %142 to %struct.i915_vma*
  %144 = call i64 @IS_ERR(%struct.i915_vma* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %132
  %147 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %148 = bitcast %struct.drm_i915_gem_object* %147 to %struct.i915_vma*
  %149 = call i32 @PTR_ERR(%struct.i915_vma* %148)
  store i32 %149, i32* %2, align 4
  br label %304

150:                                              ; preds = %132
  %151 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %152 = bitcast %struct.drm_i915_gem_object* %151 to %struct.i915_vma*
  %153 = call i32 @i915_gem_object_pin_pages(%struct.i915_vma* %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %299

157:                                              ; preds = %150
  %158 = load i32, i32* @I915_GTT_PAGE_SIZE_2M, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %161 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, %159
  store i32 %165, i32* %163, align 4
  %166 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %167 = bitcast %struct.drm_i915_gem_object* %166 to %struct.i915_vma*
  %168 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %169 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %168, i32 0, i32 0
  %170 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %167, %struct.TYPE_11__* %169, i32* null)
  store %struct.i915_vma* %170, %struct.i915_vma** %8, align 8
  %171 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %172 = call i64 @IS_ERR(%struct.i915_vma* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %157
  %175 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %176 = call i32 @PTR_ERR(%struct.i915_vma* %175)
  store i32 %176, i32* %11, align 4
  br label %295

177:                                              ; preds = %157
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = load i32, i32* @PIN_OFFSET_FIXED, align 4
  %182 = load i32, i32* %14, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* %15, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %180, %177
  %187 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @i915_vma_pin(%struct.i915_vma* %187, i32 0, i32 0, i32 %188)
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %292

193:                                              ; preds = %186
  %194 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %195 = call i32 @igt_check_page_sizes(%struct.i915_vma* %194)
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %289

199:                                              ; preds = %193
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %243, label %202

202:                                              ; preds = %199
  %203 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %204 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @I915_GTT_PAGE_SIZE_64K, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %243

210:                                              ; preds = %202
  %211 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %212 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @I915_GTT_PAGE_SIZE_2M, align 4
  %216 = call i32 @IS_ALIGNED(i32 %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %226, label %218

218:                                              ; preds = %210
  %219 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %220 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %11, align 4
  br label %289

226:                                              ; preds = %210
  %227 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %228 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @I915_GTT_PAGE_SIZE_2M, align 4
  %232 = call i32 @IS_ALIGNED(i32 %230, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %226
  %235 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %236 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %11, align 4
  br label %289

242:                                              ; preds = %226
  br label %243

243:                                              ; preds = %242, %202, %199
  %244 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %245 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %266

250:                                              ; preds = %243
  %251 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %252 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp ne i32 %257, 0
  %259 = xor i1 %258, true
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = call i32 @yesno(i32 %261)
  %263 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %254, i32 %255, i32 %256, i32 %262)
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %11, align 4
  br label %289

266:                                              ; preds = %243
  %267 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %268 = call i32 @i915_vma_unpin(%struct.i915_vma* %267)
  %269 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %270 = call i32 @i915_vma_close(%struct.i915_vma* %269)
  %271 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %272 = bitcast %struct.drm_i915_gem_object* %271 to %struct.i915_vma*
  %273 = call i32 @i915_gem_object_unpin_pages(%struct.i915_vma* %272)
  %274 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %275 = bitcast %struct.drm_i915_gem_object* %274 to %struct.i915_vma*
  %276 = load i32, i32* @I915_MM_NORMAL, align 4
  %277 = call i32 @__i915_gem_object_put_pages(%struct.i915_vma* %275, i32 %276)
  %278 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %279 = bitcast %struct.drm_i915_gem_object* %278 to %struct.i915_vma*
  %280 = call i32 @i915_gem_object_put(%struct.i915_vma* %279)
  br label %281

281:                                              ; preds = %266
  %282 = load i32, i32* %10, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %10, align 4
  br label %129

284:                                              ; preds = %129
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %9, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %9, align 4
  br label %106

288:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %304

289:                                              ; preds = %250, %234, %218, %198
  %290 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %291 = call i32 @i915_vma_unpin(%struct.i915_vma* %290)
  br label %292

292:                                              ; preds = %289, %192
  %293 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %294 = call i32 @i915_vma_close(%struct.i915_vma* %293)
  br label %295

295:                                              ; preds = %292, %174
  %296 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %297 = bitcast %struct.drm_i915_gem_object* %296 to %struct.i915_vma*
  %298 = call i32 @i915_gem_object_unpin_pages(%struct.i915_vma* %297)
  br label %299

299:                                              ; preds = %295, %156
  %300 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %301 = bitcast %struct.drm_i915_gem_object* %300 to %struct.i915_vma*
  %302 = call i32 @i915_gem_object_put(%struct.i915_vma* %301)
  %303 = load i32, i32* %11, align 4
  store i32 %303, i32* %2, align 4
  br label %304

304:                                              ; preds = %299, %288, %146, %104
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local i32 @HAS_PAGE_SIZES(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.object_info.0*) #1

declare dso_local %struct.i915_vma* @fake_huge_pages_object(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @igt_check_page_sizes(%struct.i915_vma*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_close(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.i915_vma*) #1

declare dso_local i32 @__i915_gem_object_put_pages(%struct.i915_vma*, i32) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
