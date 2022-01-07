; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c___sseu_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c___sseu_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.igt_spinner = type { i32 }
%struct.i915_request = type { i32 }

@TEST_BUSY = common dso_local global i32 0, align 4
@TEST_RESET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Spinner failed to start!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.intel_context*, %struct.igt_spinner**)* @__sseu_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sseu_prepare(i8* %0, i32 %1, %struct.intel_context* %2, %struct.igt_spinner** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_context*, align 8
  %9 = alloca %struct.igt_spinner**, align 8
  %10 = alloca %struct.i915_request*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.intel_context* %2, %struct.intel_context** %8, align 8
  store %struct.igt_spinner** %3, %struct.igt_spinner*** %9, align 8
  %12 = load %struct.igt_spinner**, %struct.igt_spinner*** %9, align 8
  store %struct.igt_spinner* null, %struct.igt_spinner** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @TEST_BUSY, align 4
  %15 = load i32, i32* @TEST_RESET, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %81

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.igt_spinner* @kzalloc(i32 4, i32 %21)
  %23 = load %struct.igt_spinner**, %struct.igt_spinner*** %9, align 8
  store %struct.igt_spinner* %22, %struct.igt_spinner** %23, align 8
  %24 = load %struct.igt_spinner**, %struct.igt_spinner*** %9, align 8
  %25 = load %struct.igt_spinner*, %struct.igt_spinner** %24, align 8
  %26 = icmp ne %struct.igt_spinner* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %81

30:                                               ; preds = %20
  %31 = load %struct.igt_spinner**, %struct.igt_spinner*** %9, align 8
  %32 = load %struct.igt_spinner*, %struct.igt_spinner** %31, align 8
  %33 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %34 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @igt_spinner_init(%struct.igt_spinner* %32, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %76

42:                                               ; preds = %30
  %43 = load %struct.igt_spinner**, %struct.igt_spinner*** %9, align 8
  %44 = load %struct.igt_spinner*, %struct.igt_spinner** %43, align 8
  %45 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %46 = load i32, i32* @MI_NOOP, align 4
  %47 = call %struct.i915_request* @igt_spinner_create_request(%struct.igt_spinner* %44, %struct.intel_context* %45, i32 %46)
  store %struct.i915_request* %47, %struct.i915_request** %10, align 8
  %48 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %49 = call i64 @IS_ERR(%struct.i915_request* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %53 = call i32 @PTR_ERR(%struct.i915_request* %52)
  store i32 %53, i32* %11, align 4
  br label %72

54:                                               ; preds = %42
  %55 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %56 = call i32 @i915_request_add(%struct.i915_request* %55)
  %57 = load %struct.igt_spinner**, %struct.igt_spinner*** %9, align 8
  %58 = load %struct.igt_spinner*, %struct.igt_spinner** %57, align 8
  %59 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %60 = call i32 @igt_wait_for_spinner(%struct.igt_spinner* %58, %struct.i915_request* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %68

67:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %81

68:                                               ; preds = %62
  %69 = load %struct.igt_spinner**, %struct.igt_spinner*** %9, align 8
  %70 = load %struct.igt_spinner*, %struct.igt_spinner** %69, align 8
  %71 = call i32 @igt_spinner_end(%struct.igt_spinner* %70)
  br label %72

72:                                               ; preds = %68, %51
  %73 = load %struct.igt_spinner**, %struct.igt_spinner*** %9, align 8
  %74 = load %struct.igt_spinner*, %struct.igt_spinner** %73, align 8
  %75 = call i32 @igt_spinner_fini(%struct.igt_spinner* %74)
  br label %76

76:                                               ; preds = %72, %41
  %77 = load %struct.igt_spinner**, %struct.igt_spinner*** %9, align 8
  %78 = call i32 @fetch_and_zero(%struct.igt_spinner** %77)
  %79 = call i32 @kfree(i32 %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %67, %27, %19
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.igt_spinner* @kzalloc(i32, i32) #1

declare dso_local i32 @igt_spinner_init(%struct.igt_spinner*, i32) #1

declare dso_local %struct.i915_request* @igt_spinner_create_request(%struct.igt_spinner*, %struct.intel_context*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_request*) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local i32 @igt_wait_for_spinner(%struct.igt_spinner*, %struct.i915_request*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @igt_spinner_end(%struct.igt_spinner*) #1

declare dso_local i32 @igt_spinner_fini(%struct.igt_spinner*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @fetch_and_zero(%struct.igt_spinner**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
