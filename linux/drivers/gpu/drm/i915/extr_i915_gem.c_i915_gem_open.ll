; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32, i32, %struct.TYPE_2__, %struct.drm_file*, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_open(%struct.drm_i915_private* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_i915_file_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %8 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.drm_i915_file_private* @kzalloc(i32 32, i32 %9)
  store %struct.drm_i915_file_private* %10, %struct.drm_i915_file_private** %6, align 8
  %11 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %12 = icmp ne %struct.drm_i915_file_private* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %19 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %18, i32 0, i32 0
  store %struct.drm_i915_file_private* %17, %struct.drm_i915_file_private** %19, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %22 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %21, i32 0, i32 4
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %22, align 8
  %23 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %24 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %25 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %24, i32 0, i32 3
  store %struct.drm_file* %23, %struct.drm_file** %25, align 8
  %26 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %27 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %31 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %35 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load i32, i32* @jiffies, align 4
  %37 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %38 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %41 = call i32 @i915_gem_context_open(%struct.drm_i915_private* %39, %struct.drm_file* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %16
  %45 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %46 = call i32 @kfree(%struct.drm_i915_file_private* %45)
  br label %47

47:                                               ; preds = %44, %16
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.drm_i915_file_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @i915_gem_context_open(%struct.drm_i915_private*, %struct.drm_file*) #1

declare dso_local i32 @kfree(%struct.drm_i915_file_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
