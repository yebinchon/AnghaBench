; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c___sseu_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c___sseu_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.intel_sseu = type { i32 }
%struct.igt_spinner = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.intel_context*, %struct.drm_i915_gem_object*, i32)* @__sseu_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sseu_test(i8* %0, i32 %1, %struct.intel_context* %2, %struct.drm_i915_gem_object* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_sseu, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_context*, align 8
  %11 = alloca %struct.drm_i915_gem_object*, align 8
  %12 = alloca %struct.igt_spinner*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.intel_sseu, %struct.intel_sseu* %7, i32 0, i32 0
  store i32 %4, i32* %14, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.intel_context* %2, %struct.intel_context** %10, align 8
  store %struct.drm_i915_gem_object* %3, %struct.drm_i915_gem_object** %11, align 8
  store %struct.igt_spinner* null, %struct.igt_spinner** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %18 = call i32 @__sseu_prepare(i8* %15, i32 %16, %struct.intel_context* %17, %struct.igt_spinner** %12)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %53

23:                                               ; preds = %5
  %24 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %25 = getelementptr inbounds %struct.intel_sseu, %struct.intel_sseu* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__intel_context_reconfigure_sseu(%struct.intel_context* %24, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %41

31:                                               ; preds = %23
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %36 = getelementptr inbounds %struct.intel_sseu, %struct.intel_sseu* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @hweight32(i32 %37)
  %39 = load %struct.igt_spinner*, %struct.igt_spinner** %12, align 8
  %40 = call i32 @__sseu_finish(i8* %32, i32 %33, %struct.intel_context* %34, %struct.drm_i915_gem_object* %35, i32 %38, %struct.igt_spinner* %39)
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %31, %30
  %42 = load %struct.igt_spinner*, %struct.igt_spinner** %12, align 8
  %43 = icmp ne %struct.igt_spinner* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.igt_spinner*, %struct.igt_spinner** %12, align 8
  %46 = call i32 @igt_spinner_end(%struct.igt_spinner* %45)
  %47 = load %struct.igt_spinner*, %struct.igt_spinner** %12, align 8
  %48 = call i32 @igt_spinner_fini(%struct.igt_spinner* %47)
  %49 = load %struct.igt_spinner*, %struct.igt_spinner** %12, align 8
  %50 = call i32 @kfree(%struct.igt_spinner* %49)
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %21
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @__sseu_prepare(i8*, i32, %struct.intel_context*, %struct.igt_spinner**) #1

declare dso_local i32 @__intel_context_reconfigure_sseu(%struct.intel_context*, i32) #1

declare dso_local i32 @__sseu_finish(i8*, i32, %struct.intel_context*, %struct.drm_i915_gem_object*, i32, %struct.igt_spinner*) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @igt_spinner_end(%struct.igt_spinner*) #1

declare dso_local i32 @igt_spinner_fini(%struct.igt_spinner*) #1

declare dso_local i32 @kfree(%struct.igt_spinner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
