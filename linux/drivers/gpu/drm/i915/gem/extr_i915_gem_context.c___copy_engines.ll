; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___copy_engines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___copy_engines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_engines = type { i32, i32**, i32 }

@engines = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_gem_engines* (%struct.i915_gem_engines*)* @__copy_engines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_gem_engines* @__copy_engines(%struct.i915_gem_engines* %0) #0 {
  %2 = alloca %struct.i915_gem_engines*, align 8
  %3 = alloca %struct.i915_gem_engines*, align 8
  %4 = alloca %struct.i915_gem_engines*, align 8
  %5 = alloca i32, align 4
  store %struct.i915_gem_engines* %0, %struct.i915_gem_engines** %3, align 8
  %6 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %3, align 8
  %7 = load i32, i32* @engines, align 4
  %8 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %3, align 8
  %9 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @struct_size(%struct.i915_gem_engines* %6, i32 %7, i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.i915_gem_engines* @kmalloc(i32 %11, i32 %12)
  store %struct.i915_gem_engines* %13, %struct.i915_gem_engines** %4, align 8
  %14 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %4, align 8
  %15 = icmp ne %struct.i915_gem_engines* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.i915_gem_engines* @ERR_PTR(i32 %18)
  store %struct.i915_gem_engines* %19, %struct.i915_gem_engines** %2, align 8
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %4, align 8
  %22 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %21, i32 0, i32 2
  %23 = call i32 @init_rcu_head(i32* %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %62, %20
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %3, align 8
  %27 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %3, align 8
  %32 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %30
  %40 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %3, align 8
  %41 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i32* @intel_context_get(i32* %46)
  %48 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %4, align 8
  %49 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* %47, i32** %53, align 8
  br label %61

54:                                               ; preds = %30
  %55 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %4, align 8
  %56 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %54, %39
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %24

65:                                               ; preds = %24
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %4, align 8
  %68 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %4, align 8
  store %struct.i915_gem_engines* %69, %struct.i915_gem_engines** %2, align 8
  br label %70

70:                                               ; preds = %65, %16
  %71 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %2, align 8
  ret %struct.i915_gem_engines* %71
}

declare dso_local %struct.i915_gem_engines* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.i915_gem_engines*, i32, i32) #1

declare dso_local %struct.i915_gem_engines* @ERR_PTR(i32) #1

declare dso_local i32 @init_rcu_head(i32*) #1

declare dso_local i32* @intel_context_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
