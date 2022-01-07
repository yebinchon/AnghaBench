; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem.c_igt_gem_hibernate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem.c_igt_gem_hibernate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i915_gem_context = type { i32 }
%struct.drm_file = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_gem_hibernate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_gem_hibernate(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %4, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = call %struct.i915_gem_context* @mock_file(%struct.drm_i915_private* %10)
  %12 = bitcast %struct.i915_gem_context* %11 to %struct.drm_file*
  store %struct.drm_file* %12, %struct.drm_file** %6, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %14 = bitcast %struct.drm_file* %13 to %struct.i915_gem_context*
  %15 = call i64 @IS_ERR(%struct.i915_gem_context* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %19 = bitcast %struct.drm_file* %18 to %struct.i915_gem_context*
  %20 = call i32 @PTR_ERR(%struct.i915_gem_context* %19)
  store i32 %20, i32* %2, align 4
  br label %77

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %30 = bitcast %struct.drm_file* %29 to %struct.i915_gem_context*
  %31 = call %struct.i915_gem_context* @live_context(%struct.drm_i915_private* %28, %struct.i915_gem_context* %30)
  store %struct.i915_gem_context* %31, %struct.i915_gem_context** %5, align 8
  %32 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %33 = call i64 @IS_ERR(%struct.i915_gem_context* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %38 = call i32 @switch_to_context(%struct.drm_i915_private* %36, %struct.i915_gem_context* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %21
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %71

47:                                               ; preds = %39
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %49 = call i32 @pm_prepare(%struct.drm_i915_private* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %71

53:                                               ; preds = %47
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = call i32 @pm_hibernate(%struct.drm_i915_private* %54)
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %57 = call i32 @simulate_hibernate(%struct.drm_i915_private* %56)
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = call i32 @pm_resume(%struct.drm_i915_private* %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %65 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %66 = call i32 @switch_to_context(%struct.drm_i915_private* %64, %struct.i915_gem_context* %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %53, %52, %46
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %73 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %74 = bitcast %struct.drm_file* %73 to %struct.i915_gem_context*
  %75 = call i32 @mock_file_free(%struct.drm_i915_private* %72, %struct.i915_gem_context* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %71, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.i915_gem_context* @mock_file(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ERR(%struct.i915_gem_context*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_gem_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_gem_context* @live_context(%struct.drm_i915_private*, %struct.i915_gem_context*) #1

declare dso_local i32 @switch_to_context(%struct.drm_i915_private*, %struct.i915_gem_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_prepare(%struct.drm_i915_private*) #1

declare dso_local i32 @pm_hibernate(%struct.drm_i915_private*) #1

declare dso_local i32 @simulate_hibernate(%struct.drm_i915_private*) #1

declare dso_local i32 @pm_resume(%struct.drm_i915_private*) #1

declare dso_local i32 @mock_file_free(%struct.drm_i915_private*, %struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
