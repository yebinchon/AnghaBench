; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_i915_gem_do_execbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_i915_gem_do_execbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_execbuffer2 = type { i32, i32, i64, i64, i32 }
%struct.drm_i915_gem_exec_object2 = type { i32 }
%struct.drm_syncobj = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.i915_execbuffer = type { i32*, i32, i32, i64, i64, i32, i32, %struct.drm_i915_gem_exec_object2*, %struct.i915_vma*, %struct.i915_vma*, %struct.TYPE_3__*, i32, %struct.TYPE_4__, i32, %struct.drm_i915_private*, %struct.i915_vma**, %struct.drm_i915_gem_execbuffer2*, %struct.drm_file* }
%struct.i915_vma = type { i32*, i64, i64, %struct.i915_vma*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.sync_file = type { i32 }

@__EXEC_INTERNAL_FLAGS = common dso_local global i32 0, align 4
@__I915_EXEC_ILLEGAL_FLAGS = common dso_local global i32 0, align 4
@__EXEC_OBJECT_INTERNAL_FLAGS = common dso_local global i32 0, align 4
@__EXEC_OBJECT_UNKNOWN_FLAGS = common dso_local global i32 0, align 4
@DBG_FORCE_RELOC = common dso_local global i64 0, align 8
@I915_EXEC_NO_RELOC = common dso_local global i32 0, align 4
@__EXEC_HAS_RELOC = common dso_local global i32 0, align 4
@I915_EXEC_SECURE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@I915_DISPATCH_SECURE = common dso_local global i32 0, align 4
@I915_EXEC_IS_PINNED = common dso_local global i32 0, align 4
@I915_DISPATCH_PINNED = common dso_local global i32 0, align 4
@I915_EXEC_FENCE_IN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I915_EXEC_FENCE_SUBMIT = common dso_local global i32 0, align 4
@I915_EXEC_FENCE_OUT = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@EXEC_OBJECT_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Attempting to use self-modifying batch buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Attempting to use out-of-bounds batch\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_exec_object2*, %struct.drm_syncobj**)* @i915_gem_do_execbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_do_execbuffer(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_i915_gem_execbuffer2* %2, %struct.drm_i915_gem_exec_object2* %3, %struct.drm_syncobj** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.drm_i915_gem_execbuffer2*, align 8
  %10 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  %11 = alloca %struct.drm_syncobj**, align 8
  %12 = alloca %struct.drm_i915_private*, align 8
  %13 = alloca %struct.i915_execbuffer, align 8
  %14 = alloca %struct.dma_fence*, align 8
  %15 = alloca %struct.dma_fence*, align 8
  %16 = alloca %struct.sync_file*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.i915_vma*, align 8
  %20 = alloca %struct.i915_vma*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store %struct.drm_i915_gem_execbuffer2* %2, %struct.drm_i915_gem_execbuffer2** %9, align 8
  store %struct.drm_i915_gem_exec_object2* %3, %struct.drm_i915_gem_exec_object2** %10, align 8
  store %struct.drm_syncobj** %4, %struct.drm_syncobj*** %11, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %22 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %21)
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %12, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %14, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %15, align 8
  store %struct.sync_file* null, %struct.sync_file** %16, align 8
  store i32 -1, i32* %17, align 4
  %23 = load i32, i32* @__EXEC_INTERNAL_FLAGS, align 4
  %24 = load i32, i32* @__I915_EXEC_ILLEGAL_FLAGS, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @BUILD_BUG_ON(i32 %26)
  %28 = load i32, i32* @__EXEC_OBJECT_INTERNAL_FLAGS, align 4
  %29 = load i32, i32* @__EXEC_OBJECT_UNKNOWN_FLAGS, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @BUILD_BUG_ON(i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %34 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 14
  store %struct.drm_i915_private* %33, %struct.drm_i915_private** %34, align 8
  %35 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %36 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 17
  store %struct.drm_file* %35, %struct.drm_file** %36, align 8
  %37 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %38 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 16
  store %struct.drm_i915_gem_execbuffer2* %37, %struct.drm_i915_gem_execbuffer2** %38, align 8
  %39 = load i64, i64* @DBG_FORCE_RELOC, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %5
  %42 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %43 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I915_EXEC_NO_RELOC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41, %5
  %49 = load i32, i32* @__EXEC_HAS_RELOC, align 4
  %50 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %56 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 7
  store %struct.drm_i915_gem_exec_object2* %55, %struct.drm_i915_gem_exec_object2** %56, align 8
  %57 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %58 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %59 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %57, i64 %61
  %63 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %62, i64 1
  %64 = bitcast %struct.drm_i915_gem_exec_object2* %63 to %struct.i915_vma**
  %65 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 15
  store %struct.i915_vma** %64, %struct.i915_vma*** %65, align 8
  %66 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 15
  %67 = load %struct.i915_vma**, %struct.i915_vma*** %66, align 8
  %68 = getelementptr inbounds %struct.i915_vma*, %struct.i915_vma** %67, i64 0
  store %struct.i915_vma* null, %struct.i915_vma** %68, align 8
  %69 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 15
  %70 = load %struct.i915_vma**, %struct.i915_vma*** %69, align 8
  %71 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i915_vma*, %struct.i915_vma** %70, i64 %74
  %76 = getelementptr inbounds %struct.i915_vma*, %struct.i915_vma** %75, i64 1
  %77 = bitcast %struct.i915_vma** %76 to i32*
  %78 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 0
  store i32* %77, i32** %78, align 8
  %79 = load i32, i32* @__EXEC_OBJECT_UNKNOWN_FLAGS, align 4
  %80 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 12
  %82 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 14
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %82, align 8
  %84 = call i32 @reloc_cache_init(%struct.TYPE_4__* %81, %struct.drm_i915_private* %83)
  %85 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %86 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 2
  store i32 %87, i32* %88, align 4
  %89 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %90 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 3
  store i64 %91, i64* %92, align 8
  %93 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %94 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 4
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 5
  store i32 0, i32* %97, align 8
  %98 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %99 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @I915_EXEC_SECURE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %54
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %106 = call i32 @INTEL_GEN(%struct.drm_i915_private* %105)
  %107 = icmp sge i32 %106, 11
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %523

111:                                              ; preds = %104
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %113 = call i32 @HAS_SECURE_BATCHES(%struct.drm_i915_private* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @EPERM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %523

118:                                              ; preds = %111
  %119 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %120 = call i32 @drm_is_current_master(%struct.drm_file* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %124 = call i32 @capable(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %122, %118
  %127 = load i32, i32* @EPERM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %523

129:                                              ; preds = %122
  %130 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %131 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %129, %54
  %135 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %136 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @I915_EXEC_IS_PINNED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load i32, i32* @I915_DISPATCH_PINNED, align 4
  %143 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %141, %134
  %147 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %148 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @I915_EXEC_FENCE_IN, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %146
  %154 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %155 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @lower_32_bits(i32 %156)
  %158 = call %struct.dma_fence* @sync_file_get_fence(i32 %157)
  store %struct.dma_fence* %158, %struct.dma_fence** %14, align 8
  %159 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %160 = icmp ne %struct.dma_fence* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %153
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %6, align 4
  br label %523

164:                                              ; preds = %153
  br label %165

165:                                              ; preds = %164, %146
  %166 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %167 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @I915_EXEC_FENCE_SUBMIT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %165
  %173 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %174 = icmp ne %struct.dma_fence* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %18, align 4
  br label %519

178:                                              ; preds = %172
  %179 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %180 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @lower_32_bits(i32 %181)
  %183 = call %struct.dma_fence* @sync_file_get_fence(i32 %182)
  store %struct.dma_fence* %183, %struct.dma_fence** %15, align 8
  %184 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %185 = icmp ne %struct.dma_fence* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %178
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %18, align 4
  br label %519

189:                                              ; preds = %178
  br label %190

190:                                              ; preds = %189, %165
  %191 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %192 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @I915_EXEC_FENCE_OUT, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %190
  %198 = load i32, i32* @O_CLOEXEC, align 4
  %199 = call i32 @get_unused_fd_flags(i32 %198)
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %17, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* %17, align 4
  store i32 %203, i32* %18, align 4
  br label %516

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204, %190
  %206 = call i32 @eb_create(%struct.i915_execbuffer* %13)
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %509

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 13
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  %216 = call i32 @GEM_BUG_ON(i32 %215)
  %217 = call i32 @eb_select_context(%struct.i915_execbuffer* %13)
  store i32 %217, i32* %18, align 4
  %218 = load i32, i32* %18, align 4
  %219 = call i64 @unlikely(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %210
  br label %507

222:                                              ; preds = %210
  %223 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %224 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %225 = call i32 @eb_pin_engine(%struct.i915_execbuffer* %13, %struct.drm_file* %223, %struct.drm_i915_gem_execbuffer2* %224)
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* %18, align 4
  %227 = call i64 @unlikely(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  br label %503

230:                                              ; preds = %222
  %231 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %232 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %231)
  store i32 %232, i32* %18, align 4
  %233 = load i32, i32* %18, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %501

236:                                              ; preds = %230
  %237 = call i32 @eb_relocate(%struct.i915_execbuffer* %13)
  store i32 %237, i32* %18, align 4
  %238 = load i32, i32* %18, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %236
  %241 = load i32, i32* @__EXEC_HAS_RELOC, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %244 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %491

247:                                              ; preds = %236
  %248 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %249 = load %struct.i915_vma*, %struct.i915_vma** %248, align 8
  %250 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @EXEC_OBJECT_WRITE, align 4
  %254 = and i32 %252, %253
  %255 = call i64 @unlikely(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %247
  %258 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %18, align 4
  br label %491

261:                                              ; preds = %247
  %262 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %265 = load %struct.i915_vma*, %struct.i915_vma** %264, align 8
  %266 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp sgt i64 %263, %267
  br i1 %268, label %280, label %269

269:                                              ; preds = %261
  %270 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %273 = load %struct.i915_vma*, %struct.i915_vma** %272, align 8
  %274 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = sub nsw i64 %275, %277
  %279 = icmp sgt i64 %271, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %269, %261
  %281 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %18, align 4
  br label %491

284:                                              ; preds = %269
  %285 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %290 = load %struct.i915_vma*, %struct.i915_vma** %289, align 8
  %291 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = sub nsw i64 %292, %294
  %296 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 4
  store i64 %295, i64* %296, align 8
  br label %297

297:                                              ; preds = %288, %284
  %298 = call i64 @eb_use_cmdparser(%struct.i915_execbuffer* %13)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %297
  %301 = call %struct.i915_vma* @eb_parse(%struct.i915_execbuffer* %13)
  store %struct.i915_vma* %301, %struct.i915_vma** %19, align 8
  %302 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %303 = call i64 @IS_ERR(%struct.i915_vma* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %307 = call i32 @PTR_ERR(%struct.i915_vma* %306)
  store i32 %307, i32* %18, align 4
  br label %491

308:                                              ; preds = %300
  br label %309

309:                                              ; preds = %308, %297
  %310 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 5
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %330

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %317 = load %struct.i915_vma*, %struct.i915_vma** %316, align 8
  %318 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = call %struct.i915_vma* @i915_gem_object_ggtt_pin(i32 %319, i32* null, i32 0, i32 0, i32 0)
  store %struct.i915_vma* %320, %struct.i915_vma** %20, align 8
  %321 = load %struct.i915_vma*, %struct.i915_vma** %20, align 8
  %322 = call i64 @IS_ERR(%struct.i915_vma* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %315
  %325 = load %struct.i915_vma*, %struct.i915_vma** %20, align 8
  %326 = call i32 @PTR_ERR(%struct.i915_vma* %325)
  store i32 %326, i32* %18, align 4
  br label %491

327:                                              ; preds = %315
  %328 = load %struct.i915_vma*, %struct.i915_vma** %20, align 8
  %329 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  store %struct.i915_vma* %328, %struct.i915_vma** %329, align 8
  br label %330

330:                                              ; preds = %327, %309
  %331 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 12
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @GEM_BUG_ON(i32 %333)
  %335 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 11
  %336 = load i32, i32* %335, align 8
  %337 = call %struct.i915_vma* @i915_request_create(i32 %336)
  %338 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  store %struct.i915_vma* %337, %struct.i915_vma** %338, align 8
  %339 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %340 = load %struct.i915_vma*, %struct.i915_vma** %339, align 8
  %341 = call i64 @IS_ERR(%struct.i915_vma* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %330
  %344 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %345 = load %struct.i915_vma*, %struct.i915_vma** %344, align 8
  %346 = call i32 @PTR_ERR(%struct.i915_vma* %345)
  store i32 %346, i32* %18, align 4
  br label %468

347:                                              ; preds = %330
  %348 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %349 = icmp ne %struct.dma_fence* %348, null
  br i1 %349, label %350, label %359

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %352 = load %struct.i915_vma*, %struct.i915_vma** %351, align 8
  %353 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %354 = call i32 @i915_request_await_dma_fence(%struct.i915_vma* %352, %struct.dma_fence* %353)
  store i32 %354, i32* %18, align 4
  %355 = load i32, i32* %18, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %350
  br label %425

358:                                              ; preds = %350
  br label %359

359:                                              ; preds = %358, %347
  %360 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %361 = icmp ne %struct.dma_fence* %360, null
  br i1 %361, label %362, label %375

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %364 = load %struct.i915_vma*, %struct.i915_vma** %363, align 8
  %365 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %366 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 10
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @i915_request_await_execution(%struct.i915_vma* %364, %struct.dma_fence* %365, i32 %369)
  store i32 %370, i32* %18, align 4
  %371 = load i32, i32* %18, align 4
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %362
  br label %425

374:                                              ; preds = %362
  br label %375

375:                                              ; preds = %374, %359
  %376 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %11, align 8
  %377 = icmp ne %struct.drm_syncobj** %376, null
  br i1 %377, label %378, label %385

378:                                              ; preds = %375
  %379 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %11, align 8
  %380 = call i32 @await_fence_array(%struct.i915_execbuffer* %13, %struct.drm_syncobj** %379)
  store i32 %380, i32* %18, align 4
  %381 = load i32, i32* %18, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %378
  br label %425

384:                                              ; preds = %378
  br label %385

385:                                              ; preds = %384, %375
  %386 = load i32, i32* %17, align 4
  %387 = icmp ne i32 %386, -1
  br i1 %387, label %388, label %399

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %390 = load %struct.i915_vma*, %struct.i915_vma** %389, align 8
  %391 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %390, i32 0, i32 4
  %392 = call %struct.sync_file* @sync_file_create(i32* %391)
  store %struct.sync_file* %392, %struct.sync_file** %16, align 8
  %393 = load %struct.sync_file*, %struct.sync_file** %16, align 8
  %394 = icmp ne %struct.sync_file* %393, null
  br i1 %394, label %398, label %395

395:                                              ; preds = %388
  %396 = load i32, i32* @ENOMEM, align 4
  %397 = sub nsw i32 0, %396
  store i32 %397, i32* %18, align 4
  br label %425

398:                                              ; preds = %388
  br label %399

399:                                              ; preds = %398, %385
  %400 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %401 = load %struct.i915_vma*, %struct.i915_vma** %400, align 8
  %402 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %403 = load %struct.i915_vma*, %struct.i915_vma** %402, align 8
  %404 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %403, i32 0, i32 3
  store %struct.i915_vma* %401, %struct.i915_vma** %404, align 8
  %405 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %406 = load %struct.i915_vma*, %struct.i915_vma** %405, align 8
  %407 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %418

410:                                              ; preds = %399
  %411 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %412 = load %struct.i915_vma*, %struct.i915_vma** %411, align 8
  %413 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %412, i32 0, i32 2
  %414 = load i64, i64* %413, align 8
  %415 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %416 = load %struct.i915_vma*, %struct.i915_vma** %415, align 8
  %417 = call i32 @intel_engine_pool_mark_active(i64 %414, %struct.i915_vma* %416)
  br label %418

418:                                              ; preds = %410, %399
  %419 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %420 = load %struct.i915_vma*, %struct.i915_vma** %419, align 8
  %421 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 5
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @trace_i915_request_queue(%struct.i915_vma* %420, i32 %422)
  %424 = call i32 @eb_submit(%struct.i915_execbuffer* %13)
  store i32 %424, i32* %18, align 4
  br label %425

425:                                              ; preds = %418, %395, %383, %373, %357
  %426 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %427 = load %struct.i915_vma*, %struct.i915_vma** %426, align 8
  %428 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %429 = call i32 @add_to_client(%struct.i915_vma* %427, %struct.drm_file* %428)
  %430 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 9
  %431 = load %struct.i915_vma*, %struct.i915_vma** %430, align 8
  %432 = call i32 @i915_request_add(%struct.i915_vma* %431)
  %433 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %11, align 8
  %434 = icmp ne %struct.drm_syncobj** %433, null
  br i1 %434, label %435, label %438

435:                                              ; preds = %425
  %436 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %11, align 8
  %437 = call i32 @signal_fence_array(%struct.i915_execbuffer* %13, %struct.drm_syncobj** %436)
  br label %438

438:                                              ; preds = %435, %425
  %439 = load %struct.sync_file*, %struct.sync_file** %16, align 8
  %440 = icmp ne %struct.sync_file* %439, null
  br i1 %440, label %441, label %467

441:                                              ; preds = %438
  %442 = load i32, i32* %18, align 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %461

444:                                              ; preds = %441
  %445 = load i32, i32* %17, align 4
  %446 = load %struct.sync_file*, %struct.sync_file** %16, align 8
  %447 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @fd_install(i32 %445, i32 %448)
  %450 = call i32 @GENMASK_ULL(i32 31, i32 0)
  %451 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %452 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 8
  %454 = and i32 %453, %450
  store i32 %454, i32* %452, align 8
  %455 = load i32, i32* %17, align 4
  %456 = shl i32 %455, 32
  %457 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %9, align 8
  %458 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %457, i32 0, i32 4
  %459 = load i32, i32* %458, align 8
  %460 = or i32 %459, %456
  store i32 %460, i32* %458, align 8
  store i32 -1, i32* %17, align 4
  br label %466

461:                                              ; preds = %441
  %462 = load %struct.sync_file*, %struct.sync_file** %16, align 8
  %463 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @fput(i32 %464)
  br label %466

466:                                              ; preds = %461, %444
  br label %467

467:                                              ; preds = %466, %438
  br label %468

468:                                              ; preds = %467, %343
  %469 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 5
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %472 = and i32 %470, %471
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %468
  %475 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %476 = load %struct.i915_vma*, %struct.i915_vma** %475, align 8
  %477 = call i32 @i915_vma_unpin(%struct.i915_vma* %476)
  br label %478

478:                                              ; preds = %474, %468
  %479 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %480 = load %struct.i915_vma*, %struct.i915_vma** %479, align 8
  %481 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %480, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %490

484:                                              ; preds = %478
  %485 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 8
  %486 = load %struct.i915_vma*, %struct.i915_vma** %485, align 8
  %487 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %486, i32 0, i32 2
  %488 = load i64, i64* %487, align 8
  %489 = call i32 @intel_engine_pool_put(i64 %488)
  br label %490

490:                                              ; preds = %484, %478
  br label %491

491:                                              ; preds = %490, %324, %305, %280, %257, %240
  %492 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 7
  %493 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %492, align 8
  %494 = icmp ne %struct.drm_i915_gem_exec_object2* %493, null
  br i1 %494, label %495, label %497

495:                                              ; preds = %491
  %496 = call i32 @eb_release_vmas(%struct.i915_execbuffer* %13)
  br label %497

497:                                              ; preds = %495, %491
  %498 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %499 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %498, i32 0, i32 0
  %500 = call i32 @mutex_unlock(i32* %499)
  br label %501

501:                                              ; preds = %497, %235
  %502 = call i32 @eb_unpin_engine(%struct.i915_execbuffer* %13)
  br label %503

503:                                              ; preds = %501, %229
  %504 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 6
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @i915_gem_context_put(i32 %505)
  br label %507

507:                                              ; preds = %503, %221
  %508 = call i32 @eb_destroy(%struct.i915_execbuffer* %13)
  br label %509

509:                                              ; preds = %507, %209
  %510 = load i32, i32* %17, align 4
  %511 = icmp ne i32 %510, -1
  br i1 %511, label %512, label %515

512:                                              ; preds = %509
  %513 = load i32, i32* %17, align 4
  %514 = call i32 @put_unused_fd(i32 %513)
  br label %515

515:                                              ; preds = %512, %509
  br label %516

516:                                              ; preds = %515, %202
  %517 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %518 = call i32 @dma_fence_put(%struct.dma_fence* %517)
  br label %519

519:                                              ; preds = %516, %186, %175
  %520 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %521 = call i32 @dma_fence_put(%struct.dma_fence* %520)
  %522 = load i32, i32* %18, align 4
  store i32 %522, i32* %6, align 4
  br label %523

523:                                              ; preds = %519, %161, %126, %115, %108
  %524 = load i32, i32* %6, align 4
  ret i32 %524
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @reloc_cache_init(%struct.TYPE_4__*, %struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_SECURE_BATCHES(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_is_current_master(%struct.drm_file*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.dma_fence* @sync_file_get_fence(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local i32 @eb_create(%struct.i915_execbuffer*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @eb_select_context(%struct.i915_execbuffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eb_pin_engine(%struct.i915_execbuffer*, %struct.drm_file*, %struct.drm_i915_gem_execbuffer2*) #1

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local i32 @eb_relocate(%struct.i915_execbuffer*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @eb_use_cmdparser(%struct.i915_execbuffer*) #1

declare dso_local %struct.i915_vma* @eb_parse(%struct.i915_execbuffer*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_gem_object_ggtt_pin(i32, i32*, i32, i32, i32) #1

declare dso_local %struct.i915_vma* @i915_request_create(i32) #1

declare dso_local i32 @i915_request_await_dma_fence(%struct.i915_vma*, %struct.dma_fence*) #1

declare dso_local i32 @i915_request_await_execution(%struct.i915_vma*, %struct.dma_fence*, i32) #1

declare dso_local i32 @await_fence_array(%struct.i915_execbuffer*, %struct.drm_syncobj**) #1

declare dso_local %struct.sync_file* @sync_file_create(i32*) #1

declare dso_local i32 @intel_engine_pool_mark_active(i64, %struct.i915_vma*) #1

declare dso_local i32 @trace_i915_request_queue(%struct.i915_vma*, i32) #1

declare dso_local i32 @eb_submit(%struct.i915_execbuffer*) #1

declare dso_local i32 @add_to_client(%struct.i915_vma*, %struct.drm_file*) #1

declare dso_local i32 @i915_request_add(%struct.i915_vma*) #1

declare dso_local i32 @signal_fence_array(%struct.i915_execbuffer*, %struct.drm_syncobj**) #1

declare dso_local i32 @fd_install(i32, i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @intel_engine_pool_put(i64) #1

declare dso_local i32 @eb_release_vmas(%struct.i915_execbuffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @eb_unpin_engine(%struct.i915_execbuffer*) #1

declare dso_local i32 @i915_gem_context_put(i32) #1

declare dso_local i32 @eb_destroy(%struct.i915_execbuffer*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
