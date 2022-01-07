; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_evict.c_igt_evict_for_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_evict.c_igt_evict_for_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, i32 }
%struct.drm_i915_private = type { %struct.i915_ggtt }
%struct.i915_ggtt = type { i32 }

@__const.igt_evict_for_vma.target = private unnamed_addr constant %struct.drm_mm_node { i32 4096, i32 0 }, align 4
@objects = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"i915_gem_evict_for_node on a full GGTT returned err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"i915_gem_evict_for_node returned err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_evict_for_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_evict_for_vma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_ggtt*, align 8
  %5 = alloca %struct.drm_mm_node, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  store %struct.i915_ggtt* %10, %struct.i915_ggtt** %4, align 8
  %11 = bitcast %struct.drm_mm_node* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.drm_mm_node* @__const.igt_evict_for_vma.target to i8*), i64 8, i1 false)
  %12 = load i32, i32* @objects, align 4
  %13 = call i32 @LIST_HEAD(i32 %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i32 @populate_ggtt(%struct.drm_i915_private* %14, i32* @objects)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %21 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %20, i32 0, i32 0
  %22 = call i32 @i915_gem_evict_for_node(i32* %21, %struct.drm_mm_node* %5, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %42

30:                                               ; preds = %19
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = call i32 @unpin_ggtt(%struct.drm_i915_private* %31)
  %33 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %34 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %33, i32 0, i32 0
  %35 = call i32 @i915_gem_evict_for_node(i32* %34, %struct.drm_mm_node* %5, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %42

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %38, %27, %18
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = call i32 @cleanup_objects(%struct.drm_i915_private* %43, i32* @objects)
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LIST_HEAD(i32) #2

declare dso_local i32 @populate_ggtt(%struct.drm_i915_private*, i32*) #2

declare dso_local i32 @i915_gem_evict_for_node(i32*, %struct.drm_mm_node*, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @unpin_ggtt(%struct.drm_i915_private*) #2

declare dso_local i32 @cleanup_objects(%struct.drm_i915_private*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
