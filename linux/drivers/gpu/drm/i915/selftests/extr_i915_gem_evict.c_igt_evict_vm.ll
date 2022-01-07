; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_evict.c_igt_evict_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_evict.c_igt_evict_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.i915_ggtt }
%struct.i915_ggtt = type { i32 }

@objects = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"i915_gem_evict_vm on a full GGTT returned err=%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_evict_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_evict_vm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_ggtt*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  store %struct.i915_ggtt* %9, %struct.i915_ggtt** %4, align 8
  %10 = load i32, i32* @objects, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i32 @populate_ggtt(%struct.drm_i915_private* %12, i32* @objects)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %19 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %18, i32 0, i32 0
  %20 = call i32 @i915_gem_evict_vm(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %38

26:                                               ; preds = %17
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i32 @unpin_ggtt(%struct.drm_i915_private* %27)
  %29 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %30 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %29, i32 0, i32 0
  %31 = call i32 @i915_gem_evict_vm(i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %34, %23, %16
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call i32 @cleanup_objects(%struct.drm_i915_private* %39, i32* @objects)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @populate_ggtt(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @i915_gem_evict_vm(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @unpin_ggtt(%struct.drm_i915_private*) #1

declare dso_local i32 @cleanup_objects(%struct.drm_i915_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
