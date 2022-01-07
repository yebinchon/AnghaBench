; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c___sseu_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c___sseu_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.intel_context*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.igt_spinner = type { i32 }

@TEST_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sseu\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Context\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Kernel context\00", align 1
@TEST_IDLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c" after idle!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.intel_context*, %struct.drm_i915_gem_object*, i32, %struct.igt_spinner*)* @__sseu_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sseu_finish(i8* %0, i32 %1, %struct.intel_context* %2, %struct.drm_i915_gem_object* %3, i32 %4, %struct.igt_spinner* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_context*, align 8
  %11 = alloca %struct.drm_i915_gem_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.igt_spinner*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.intel_context* %2, %struct.intel_context** %10, align 8
  store %struct.drm_i915_gem_object* %3, %struct.drm_i915_gem_object** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.igt_spinner* %5, %struct.igt_spinner** %13, align 8
  %17 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %18 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @hweight32(i32 %22)
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @TEST_RESET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %30 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @intel_engine_reset(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %71

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %6
  %38 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %39 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @TEST_RESET, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %47

45:                                               ; preds = %37
  %46 = load %struct.igt_spinner*, %struct.igt_spinner** %13, align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi %struct.igt_spinner* [ null, %44 ], [ %46, %45 ]
  %49 = call i32 @__read_slice_count(%struct.intel_context* %38, %struct.drm_i915_gem_object* %39, %struct.igt_spinner* %48, i32* %15)
  store i32 %49, i32* %16, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @__check_rpcs(i8* %50, i32 %51, i32 %52, i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %71

58:                                               ; preds = %47
  %59 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %60 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.intel_context*, %struct.intel_context** %62, align 8
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %65 = call i32 @__read_slice_count(%struct.intel_context* %63, %struct.drm_i915_gem_object* %64, %struct.igt_spinner* null, i32* %15)
  store i32 %65, i32* %16, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @__check_rpcs(i8* %66, i32 %67, i32 %68, i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %58, %57, %35
  %72 = load %struct.igt_spinner*, %struct.igt_spinner** %13, align 8
  %73 = icmp ne %struct.igt_spinner* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.igt_spinner*, %struct.igt_spinner** %13, align 8
  %76 = call i32 @igt_spinner_end(%struct.igt_spinner* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @TEST_IDLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %77
  %83 = load i32, i32* %16, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %87 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %92 = call i32 @i915_gem_wait_for_idle(i32 %90, i32 0, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %7, align 4
  br label %108

97:                                               ; preds = %85
  %98 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %99 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %100 = call i32 @__read_slice_count(%struct.intel_context* %98, %struct.drm_i915_gem_object* %99, %struct.igt_spinner* null, i32* %15)
  store i32 %100, i32* %16, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @__check_rpcs(i8* %101, i32 %102, i32 %103, i32 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %97, %82, %77
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %95
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @intel_engine_reset(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @__read_slice_count(%struct.intel_context*, %struct.drm_i915_gem_object*, %struct.igt_spinner*, i32*) #1

declare dso_local i32 @__check_rpcs(i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @igt_spinner_end(%struct.igt_spinner*) #1

declare dso_local i32 @i915_gem_wait_for_idle(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
