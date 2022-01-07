; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c___reloc_gpu_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c___reloc_gpu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { %struct.TYPE_3__*, i32, %struct.reloc_cache }
%struct.TYPE_3__ = type { i32 (%struct.intel_engine_pool_node*, i32, i32, i32)*, i32 }
%struct.intel_engine_pool_node = type { i32, %struct.intel_engine_pool_node*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.reloc_cache = type { i32, i64, %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node*, i64 }
%struct.i915_vma = type { i32, %struct.i915_vma*, %struct.TYPE_4__, i32 }
%struct.i915_request = type { i32, %struct.i915_request*, %struct.TYPE_4__, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@I915_MAP_FORCE_WB = common dso_local global i32 0, align 4
@I915_MAP_FORCE_WC = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@PIN_NONBLOCK = common dso_local global i32 0, align 4
@I915_DISPATCH_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, %struct.i915_vma*, i32)* @__reloc_gpu_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reloc_gpu_alloc(%struct.i915_execbuffer* %0, %struct.i915_vma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_execbuffer*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reloc_cache*, align 8
  %9 = alloca %struct.intel_engine_pool_node*, align 8
  %10 = alloca %struct.i915_request*, align 8
  %11 = alloca %struct.i915_vma*, align 8
  %12 = alloca %struct.intel_engine_pool_node*, align 8
  %13 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %5, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %15 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %14, i32 0, i32 2
  store %struct.reloc_cache* %15, %struct.reloc_cache** %8, align 8
  %16 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %17 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call %struct.intel_engine_pool_node* @intel_engine_pool_get(i32* %19, i32 %20)
  store %struct.intel_engine_pool_node* %21, %struct.intel_engine_pool_node** %9, align 8
  %22 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %9, align 8
  %23 = call i64 @IS_ERR(%struct.intel_engine_pool_node* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %9, align 8
  %27 = call i32 @PTR_ERR(%struct.intel_engine_pool_node* %26)
  store i32 %27, i32* %4, align 4
  br label %197

28:                                               ; preds = %3
  %29 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %9, align 8
  %30 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %33 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @I915_MAP_FORCE_WB, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @I915_MAP_FORCE_WC, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call %struct.intel_engine_pool_node* @i915_gem_object_pin_map(i32 %31, i32 %41)
  store %struct.intel_engine_pool_node* %42, %struct.intel_engine_pool_node** %12, align 8
  %43 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %12, align 8
  %44 = call i64 @IS_ERR(%struct.intel_engine_pool_node* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %12, align 8
  %48 = call i32 @PTR_ERR(%struct.intel_engine_pool_node* %47)
  store i32 %48, i32* %13, align 4
  br label %193

49:                                               ; preds = %40
  %50 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %9, align 8
  %51 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %54 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.intel_engine_pool_node* @i915_vma_instance(i32 %52, i32 %55, i32* null)
  %57 = bitcast %struct.intel_engine_pool_node* %56 to %struct.i915_vma*
  store %struct.i915_vma* %57, %struct.i915_vma** %11, align 8
  %58 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %59 = bitcast %struct.i915_vma* %58 to %struct.intel_engine_pool_node*
  %60 = call i64 @IS_ERR(%struct.intel_engine_pool_node* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %64 = bitcast %struct.i915_vma* %63 to %struct.intel_engine_pool_node*
  %65 = call i32 @PTR_ERR(%struct.intel_engine_pool_node* %64)
  store i32 %65, i32* %13, align 4
  br label %188

66:                                               ; preds = %49
  %67 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %68 = bitcast %struct.i915_vma* %67 to %struct.intel_engine_pool_node*
  %69 = load i32, i32* @PIN_USER, align 4
  %70 = load i32, i32* @PIN_NONBLOCK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @i915_vma_pin(%struct.intel_engine_pool_node* %68, i32 0, i32 0, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %188

76:                                               ; preds = %66
  %77 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %78 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.intel_engine_pool_node* @i915_request_create(i32 %79)
  %81 = bitcast %struct.intel_engine_pool_node* %80 to %struct.i915_request*
  store %struct.i915_request* %81, %struct.i915_request** %10, align 8
  %82 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %83 = bitcast %struct.i915_request* %82 to %struct.intel_engine_pool_node*
  %84 = call i64 @IS_ERR(%struct.intel_engine_pool_node* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %88 = bitcast %struct.i915_request* %87 to %struct.intel_engine_pool_node*
  %89 = call i32 @PTR_ERR(%struct.intel_engine_pool_node* %88)
  store i32 %89, i32* %13, align 4
  br label %184

90:                                               ; preds = %76
  %91 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %9, align 8
  %92 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %93 = bitcast %struct.i915_request* %92 to %struct.intel_engine_pool_node*
  %94 = call i32 @intel_engine_pool_mark_active(%struct.intel_engine_pool_node* %91, %struct.intel_engine_pool_node* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %180

98:                                               ; preds = %90
  %99 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %100 = bitcast %struct.i915_request* %99 to %struct.intel_engine_pool_node*
  %101 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %102 = bitcast %struct.i915_vma* %101 to %struct.intel_engine_pool_node*
  %103 = call i32 @reloc_move_to_gpu(%struct.intel_engine_pool_node* %100, %struct.intel_engine_pool_node* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %180

107:                                              ; preds = %98
  %108 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %109 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32 (%struct.intel_engine_pool_node*, i32, i32, i32)*, i32 (%struct.intel_engine_pool_node*, i32, i32, i32)** %111, align 8
  %113 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %114 = bitcast %struct.i915_request* %113 to %struct.intel_engine_pool_node*
  %115 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %116 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %121 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 5
  br i1 %123, label %124, label %125

124:                                              ; preds = %107
  br label %127

125:                                              ; preds = %107
  %126 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  br label %127

127:                                              ; preds = %125, %124
  %128 = phi i32 [ 0, %124 ], [ %126, %125 ]
  %129 = call i32 %112(%struct.intel_engine_pool_node* %114, i32 %118, i32 %119, i32 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %175

133:                                              ; preds = %127
  %134 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %135 = bitcast %struct.i915_vma* %134 to %struct.intel_engine_pool_node*
  %136 = call i32 @i915_vma_lock(%struct.intel_engine_pool_node* %135)
  %137 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %138 = bitcast %struct.i915_request* %137 to %struct.intel_engine_pool_node*
  %139 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %140 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @i915_request_await_object(%struct.intel_engine_pool_node* %138, i32 %141, i32 0)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %133
  %146 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %147 = bitcast %struct.i915_vma* %146 to %struct.intel_engine_pool_node*
  %148 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %149 = bitcast %struct.i915_request* %148 to %struct.intel_engine_pool_node*
  %150 = call i32 @i915_vma_move_to_active(%struct.intel_engine_pool_node* %147, %struct.intel_engine_pool_node* %149, i32 0)
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %145, %133
  %152 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %153 = bitcast %struct.i915_vma* %152 to %struct.intel_engine_pool_node*
  %154 = call i32 @i915_vma_unlock(%struct.intel_engine_pool_node* %153)
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %175

158:                                              ; preds = %151
  %159 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %160 = bitcast %struct.i915_vma* %159 to %struct.i915_request*
  %161 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %162 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %161, i32 0, i32 1
  store %struct.i915_request* %160, %struct.i915_request** %162, align 8
  %163 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %164 = bitcast %struct.i915_vma* %163 to %struct.intel_engine_pool_node*
  %165 = call i32 @i915_vma_unpin(%struct.intel_engine_pool_node* %164)
  %166 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %167 = bitcast %struct.i915_request* %166 to %struct.intel_engine_pool_node*
  %168 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %169 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %168, i32 0, i32 3
  store %struct.intel_engine_pool_node* %167, %struct.intel_engine_pool_node** %169, align 8
  %170 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %12, align 8
  %171 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %172 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %171, i32 0, i32 2
  store %struct.intel_engine_pool_node* %170, %struct.intel_engine_pool_node** %172, align 8
  %173 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %174 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  br label %193

175:                                              ; preds = %157, %132
  %176 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %177 = bitcast %struct.i915_request* %176 to %struct.intel_engine_pool_node*
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @i915_request_skip(%struct.intel_engine_pool_node* %177, i32 %178)
  br label %180

180:                                              ; preds = %175, %106, %97
  %181 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %182 = bitcast %struct.i915_request* %181 to %struct.intel_engine_pool_node*
  %183 = call i32 @i915_request_add(%struct.intel_engine_pool_node* %182)
  br label %184

184:                                              ; preds = %180, %86
  %185 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %186 = bitcast %struct.i915_vma* %185 to %struct.intel_engine_pool_node*
  %187 = call i32 @i915_vma_unpin(%struct.intel_engine_pool_node* %186)
  br label %188

188:                                              ; preds = %184, %75, %62
  %189 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %9, align 8
  %190 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @i915_gem_object_unpin_map(i32 %191)
  br label %193

193:                                              ; preds = %188, %158, %46
  %194 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %9, align 8
  %195 = call i32 @intel_engine_pool_put(%struct.intel_engine_pool_node* %194)
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %193, %25
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local %struct.intel_engine_pool_node* @intel_engine_pool_get(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.intel_engine_pool_node*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_engine_pool_node*) #1

declare dso_local %struct.intel_engine_pool_node* @i915_gem_object_pin_map(i32, i32) #1

declare dso_local %struct.intel_engine_pool_node* @i915_vma_instance(i32, i32, i32*) #1

declare dso_local i32 @i915_vma_pin(%struct.intel_engine_pool_node*, i32, i32, i32) #1

declare dso_local %struct.intel_engine_pool_node* @i915_request_create(i32) #1

declare dso_local i32 @intel_engine_pool_mark_active(%struct.intel_engine_pool_node*, %struct.intel_engine_pool_node*) #1

declare dso_local i32 @reloc_move_to_gpu(%struct.intel_engine_pool_node*, %struct.intel_engine_pool_node*) #1

declare dso_local i32 @i915_vma_lock(%struct.intel_engine_pool_node*) #1

declare dso_local i32 @i915_request_await_object(%struct.intel_engine_pool_node*, i32, i32) #1

declare dso_local i32 @i915_vma_move_to_active(%struct.intel_engine_pool_node*, %struct.intel_engine_pool_node*, i32) #1

declare dso_local i32 @i915_vma_unlock(%struct.intel_engine_pool_node*) #1

declare dso_local i32 @i915_vma_unpin(%struct.intel_engine_pool_node*) #1

declare dso_local i32 @i915_request_skip(%struct.intel_engine_pool_node*, i32) #1

declare dso_local i32 @i915_request_add(%struct.intel_engine_pool_node*) #1

declare dso_local i32 @i915_gem_object_unpin_map(i32) #1

declare dso_local i32 @intel_engine_pool_put(%struct.intel_engine_pool_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
