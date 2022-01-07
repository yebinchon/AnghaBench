; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_lookup_user_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_lookup_user_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }
%struct.i915_gem_context = type { i32 }
%struct.i915_engine_class_instance = type { i32, i32 }
%struct.intel_engine_cs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_USER_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_context* (%struct.i915_gem_context*, i64, %struct.i915_engine_class_instance*)* @lookup_user_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_context* @lookup_user_engine(%struct.i915_gem_context* %0, i64 %1, %struct.i915_engine_class_instance* %2) #0 {
  %4 = alloca %struct.intel_context*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i915_engine_class_instance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_engine_cs*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.i915_engine_class_instance* %2, %struct.i915_engine_class_instance** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 0)
  %12 = sext i32 %11 to i64
  %13 = and i64 %10, %12
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %19 = call i32 @i915_gem_context_user_engines(%struct.i915_gem_context* %18)
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.intel_context* @ERR_PTR(i32 %23)
  store %struct.intel_context* %24, %struct.intel_context** %4, align 8
  br label %58

25:                                               ; preds = %3
  %26 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %27 = call i32 @i915_gem_context_user_engines(%struct.i915_gem_context* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %31 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.i915_engine_class_instance*, %struct.i915_engine_class_instance** %7, align 8
  %34 = getelementptr inbounds %struct.i915_engine_class_instance, %struct.i915_engine_class_instance* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i915_engine_class_instance*, %struct.i915_engine_class_instance** %7, align 8
  %37 = getelementptr inbounds %struct.i915_engine_class_instance, %struct.i915_engine_class_instance* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.intel_engine_cs* @intel_engine_lookup_user(i32 %32, i32 %35, i32 %38)
  store %struct.intel_engine_cs* %39, %struct.intel_engine_cs** %9, align 8
  %40 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %9, align 8
  %41 = icmp ne %struct.intel_engine_cs* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.intel_context* @ERR_PTR(i32 %44)
  store %struct.intel_context* %45, %struct.intel_context** %4, align 8
  br label %58

46:                                               ; preds = %29
  %47 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %9, align 8
  %48 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  br label %54

50:                                               ; preds = %25
  %51 = load %struct.i915_engine_class_instance*, %struct.i915_engine_class_instance** %7, align 8
  %52 = getelementptr inbounds %struct.i915_engine_class_instance, %struct.i915_engine_class_instance* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.intel_context* @i915_gem_context_get_engine(%struct.i915_gem_context* %55, i32 %56)
  store %struct.intel_context* %57, %struct.intel_context** %4, align 8
  br label %58

58:                                               ; preds = %54, %42, %21
  %59 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  ret %struct.intel_context* %59
}

declare dso_local i32 @BIT(...) #1

declare dso_local i32 @i915_gem_context_user_engines(%struct.i915_gem_context*) #1

declare dso_local %struct.intel_context* @ERR_PTR(i32) #1

declare dso_local %struct.intel_engine_cs* @intel_engine_lookup_user(i32, i32, i32) #1

declare dso_local %struct.intel_context* @i915_gem_context_get_engine(%struct.i915_gem_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
