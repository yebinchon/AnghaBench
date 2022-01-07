; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_evict_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_evict_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evict_vma = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_mm_node, %struct.i915_address_space* }
%struct.drm_mm_node = type { i32 }
%struct.i915_address_space = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @evict_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evict_vma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evict_vma*, align 8
  %4 = alloca %struct.i915_address_space*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_mm_node, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.evict_vma*
  store %struct.evict_vma* %9, %struct.evict_vma** %3, align 8
  %10 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %11 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.i915_address_space*, %struct.i915_address_space** %13, align 8
  store %struct.i915_address_space* %14, %struct.i915_address_space** %4, align 8
  %15 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %16 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  %18 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %19 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = bitcast %struct.drm_mm_node* %6 to i8*
  %23 = bitcast %struct.drm_mm_node* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 8 %23, i64 4, i1 false)
  %24 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %25 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %24, i32 0, i32 0
  %26 = call i32 @complete(i32* %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %32 = call i32 @i915_gem_evict_for_node(%struct.i915_address_space* %31, %struct.drm_mm_node* %6, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @complete(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @i915_gem_evict_for_node(%struct.i915_address_space*, %struct.drm_mm_node*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
