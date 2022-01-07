; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_lookup_vmas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_lookup_vmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32, %struct.TYPE_8__*, %struct.i915_vma**, %struct.TYPE_7__*, i32*, %struct.TYPE_9__*, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.radix_tree_root }
%struct.radix_tree_root = type { i32 }
%struct.i915_vma = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.i915_lut_handle = type { i32, %struct.TYPE_8__*, i32 }

@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__EXEC_VALIDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*)* @eb_lookup_vmas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_lookup_vmas(%struct.i915_execbuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_execbuffer*, align 8
  %4 = alloca %struct.radix_tree_root*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i915_lut_handle*, align 8
  %11 = alloca %struct.i915_vma*, align 8
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %3, align 8
  %12 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %13 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store %struct.radix_tree_root* %15, %struct.radix_tree_root** %4, align 8
  %16 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %17 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = call i32 @i915_gem_context_is_banned(%struct.TYPE_8__* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %242

25:                                               ; preds = %1
  %26 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %27 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %26, i32 0, i32 9
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %30 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %29, i32 0, i32 8
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %33 = call i32 @eb_batch_index(%struct.i915_execbuffer* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %35 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %40 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @i915_gem_context_is_closed(%struct.TYPE_8__* %41)
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %25
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %235

48:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %207, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %52 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %210

55:                                               ; preds = %49
  %56 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %57 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %56, i32 0, i32 5
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call %struct.i915_vma* @radix_tree_lookup(%struct.radix_tree_root* %64, i32 %65)
  store %struct.i915_vma* %66, %struct.i915_vma** %11, align 8
  %67 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %68 = call i64 @likely(%struct.i915_vma* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %148

71:                                               ; preds = %55
  %72 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %73 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup(i32 %74, i32 %75)
  store %struct.drm_i915_gem_object* %76, %struct.drm_i915_gem_object** %5, align 8
  %77 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %78 = icmp ne %struct.drm_i915_gem_object* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %228

86:                                               ; preds = %71
  %87 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %88 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %89 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %88, i32 0, i32 6
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %87, i32 %92, i32* null)
  store %struct.i915_vma* %93, %struct.i915_vma** %11, align 8
  %94 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %95 = call i64 @IS_ERR(%struct.i915_vma* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %99 = call i32 @PTR_ERR(%struct.i915_vma* %98)
  store i32 %99, i32* %8, align 4
  br label %225

100:                                              ; preds = %86
  %101 = call %struct.i915_lut_handle* (...) @i915_lut_handle_alloc()
  store %struct.i915_lut_handle* %101, %struct.i915_lut_handle** %10, align 8
  %102 = load %struct.i915_lut_handle*, %struct.i915_lut_handle** %10, align 8
  %103 = icmp ne %struct.i915_lut_handle* %102, null
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %8, align 4
  br label %225

111:                                              ; preds = %100
  %112 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %115 = call i32 @radix_tree_insert(%struct.radix_tree_root* %112, i32 %113, %struct.i915_vma* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load %struct.i915_lut_handle*, %struct.i915_lut_handle** %10, align 8
  %121 = call i32 @i915_lut_handle_free(%struct.i915_lut_handle* %120)
  br label %225

122:                                              ; preds = %111
  %123 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %124 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %123, i32 0, i32 2
  %125 = call i32 @atomic_fetch_inc(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %129 = call i32 @i915_vma_reopen(%struct.i915_vma* %128)
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.i915_lut_handle*, %struct.i915_lut_handle** %10, align 8
  %133 = getelementptr inbounds %struct.i915_lut_handle, %struct.i915_lut_handle* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %135 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load %struct.i915_lut_handle*, %struct.i915_lut_handle** %10, align 8
  %138 = getelementptr inbounds %struct.i915_lut_handle, %struct.i915_lut_handle* %137, i32 0, i32 1
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %138, align 8
  %139 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %140 = call i32 @i915_gem_object_lock(%struct.drm_i915_gem_object* %139)
  %141 = load %struct.i915_lut_handle*, %struct.i915_lut_handle** %10, align 8
  %142 = getelementptr inbounds %struct.i915_lut_handle, %struct.i915_lut_handle* %141, i32 0, i32 0
  %143 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %144 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %143, i32 0, i32 0
  %145 = call i32 @list_add(i32* %142, i32* %144)
  %146 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %147 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %146)
  br label %148

148:                                              ; preds = %130, %70
  %149 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %153 = call i32 @eb_add_vma(%struct.i915_execbuffer* %149, i32 %150, i32 %151, %struct.i915_vma* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %228

158:                                              ; preds = %148
  %159 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %160 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %161 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %160, i32 0, i32 2
  %162 = load %struct.i915_vma**, %struct.i915_vma*** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.i915_vma*, %struct.i915_vma** %162, i64 %164
  %166 = load %struct.i915_vma*, %struct.i915_vma** %165, align 8
  %167 = icmp ne %struct.i915_vma* %159, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @GEM_BUG_ON(i32 %168)
  %170 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %171 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %174 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = icmp ne i32* %172, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @GEM_BUG_ON(i32 %180)
  %182 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %183 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %182, i32 0, i32 0
  %184 = call i64 @drm_mm_node_allocated(i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %158
  %187 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %188 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %187, i32 0, i32 5
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i64 %191
  %193 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %194 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %195 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @eb_vma_misplaced(%struct.TYPE_9__* %192, %struct.i915_vma* %193, i32 %200)
  %202 = icmp ne i64 %201, 0
  br label %203

203:                                              ; preds = %186, %158
  %204 = phi i1 [ false, %158 ], [ %202, %186 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @GEM_BUG_ON(i32 %205)
  br label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %6, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %49

210:                                              ; preds = %49
  %211 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %212 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %211, i32 0, i32 1
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = call i32 @mutex_unlock(i32* %214)
  %216 = load i32, i32* @__EXEC_VALIDATED, align 4
  %217 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %218 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %217, i32 0, i32 3
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %216
  store i32 %222, i32* %220, align 4
  %223 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %224 = call i32 @eb_reserve(%struct.i915_execbuffer* %223)
  store i32 %224, i32* %2, align 4
  br label %242

225:                                              ; preds = %119, %108, %97
  %226 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %227 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %226)
  br label %228

228:                                              ; preds = %225, %157, %83
  %229 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %230 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %229, i32 0, i32 2
  %231 = load %struct.i915_vma**, %struct.i915_vma*** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.i915_vma*, %struct.i915_vma** %231, i64 %233
  store %struct.i915_vma* null, %struct.i915_vma** %234, align 8
  br label %235

235:                                              ; preds = %228, %45
  %236 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %237 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %236, i32 0, i32 1
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = call i32 @mutex_unlock(i32* %239)
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %235, %210, %22
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i915_gem_context_is_banned(%struct.TYPE_8__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @eb_batch_index(%struct.i915_execbuffer*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_gem_context_is_closed(%struct.TYPE_8__*) #1

declare dso_local %struct.i915_vma* @radix_tree_lookup(%struct.radix_tree_root*, i32) #1

declare dso_local i64 @likely(%struct.i915_vma*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup(i32, i32) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_lut_handle* @i915_lut_handle_alloc(...) #1

declare dso_local i32 @radix_tree_insert(%struct.radix_tree_root*, i32, %struct.i915_vma*) #1

declare dso_local i32 @i915_lut_handle_free(%struct.i915_lut_handle*) #1

declare dso_local i32 @atomic_fetch_inc(i32*) #1

declare dso_local i32 @i915_vma_reopen(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_lock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @eb_add_vma(%struct.i915_execbuffer*, i32, i32, %struct.i915_vma*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @drm_mm_node_allocated(i32*) #1

declare dso_local i64 @eb_vma_misplaced(%struct.TYPE_9__*, %struct.i915_vma*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @eb_reserve(%struct.i915_execbuffer*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
