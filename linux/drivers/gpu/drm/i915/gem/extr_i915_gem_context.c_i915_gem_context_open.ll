; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32, i32, i32, i32 }
%struct.i915_gem_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_context_open(%struct.drm_i915_private* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_i915_file_private*, align 8
  %7 = alloca %struct.i915_gem_context*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %9 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %10 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %10, align 8
  store %struct.drm_i915_file_private* %11, %struct.drm_i915_file_private** %6, align 8
  %12 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %13 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %12, i32 0, i32 0
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %16 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %15, i32 0, i32 1
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %19 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %18, i32 0, i32 2
  %20 = call i32 @idr_init(i32* %19)
  %21 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %22 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %21, i32 0, i32 3
  %23 = call i32 @idr_init_base(i32* %22, i32 1)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = call %struct.i915_gem_context* @i915_gem_create_context(%struct.drm_i915_private* %28, i32 0)
  store %struct.i915_gem_context* %29, %struct.i915_gem_context** %7, align 8
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %35 = call i64 @IS_ERR(%struct.i915_gem_context* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %39 = call i32 @PTR_ERR(%struct.i915_gem_context* %38)
  store i32 %39, i32* %8, align 4
  br label %58

40:                                               ; preds = %2
  %41 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %42 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %43 = call i32 @gem_context_register(%struct.i915_gem_context* %41, %struct.drm_i915_file_private* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %55

47:                                               ; preds = %40
  %48 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %49 = call i32 @i915_gem_context_is_kernel(%struct.i915_gem_context* %48)
  %50 = call i32 @GEM_BUG_ON(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @GEM_BUG_ON(i32 %53)
  store i32 0, i32* %3, align 4
  br label %72

55:                                               ; preds = %46
  %56 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %57 = call i32 @context_close(%struct.i915_gem_context* %56)
  br label %58

58:                                               ; preds = %55, %37
  %59 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %60 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %59, i32 0, i32 3
  %61 = call i32 @idr_destroy(i32* %60)
  %62 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %63 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %62, i32 0, i32 2
  %64 = call i32 @idr_destroy(i32* %63)
  %65 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %66 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %65, i32 0, i32 1
  %67 = call i32 @mutex_destroy(i32* %66)
  %68 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %69 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %68, i32 0, i32 0
  %70 = call i32 @mutex_destroy(i32* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %58, %47
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @idr_init_base(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_gem_context* @i915_gem_create_context(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_gem_context*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_gem_context*) #1

declare dso_local i32 @gem_context_register(%struct.i915_gem_context*, %struct.drm_i915_file_private*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_context_is_kernel(%struct.i915_gem_context*) #1

declare dso_local i32 @context_close(%struct.i915_gem_context*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
