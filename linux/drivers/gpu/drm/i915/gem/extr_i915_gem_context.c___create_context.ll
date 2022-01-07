; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___create_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___create_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i64, i32*, i64*, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.drm_i915_private*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i915_gem_engines = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I915_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CONTEXT_FAST_HANG_JIFFIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_gem_context* (%struct.drm_i915_private*)* @__create_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_gem_context* @__create_context(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.i915_gem_context*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca %struct.i915_gem_engines*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.i915_gem_context* @kzalloc(i32 72, i32 %8)
  store %struct.i915_gem_context* %9, %struct.i915_gem_context** %4, align 8
  %10 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %11 = icmp ne %struct.i915_gem_context* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.i915_gem_context* @ERR_PTR(i32 %14)
  store %struct.i915_gem_context* %15, %struct.i915_gem_context** %2, align 8
  br label %100

16:                                               ; preds = %1
  %17 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %18 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %17, i32 0, i32 12
  %19 = call i32 @kref_init(i32* %18)
  %20 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %21 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %20, i32 0, i32 11
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %21, i32* %24)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %28 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %27, i32 0, i32 10
  store %struct.drm_i915_private* %26, %struct.drm_i915_private** %28, align 8
  %29 = load i32, i32* @I915_PRIORITY_NORMAL, align 4
  %30 = call i32 @I915_USER_PRIORITY(i32 %29)
  %31 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %32 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %35 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %34, i32 0, i32 8
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %38 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %37, i32 0, i32 7
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %41 = call %struct.i915_gem_engines* @default_engines(%struct.i915_gem_context* %40)
  store %struct.i915_gem_engines* %41, %struct.i915_gem_engines** %5, align 8
  %42 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %5, align 8
  %43 = call i64 @IS_ERR(%struct.i915_gem_engines* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %16
  %46 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %5, align 8
  %47 = call i32 @PTR_ERR(%struct.i915_gem_engines* %46)
  store i32 %47, i32* %6, align 4
  br label %95

48:                                               ; preds = %16
  %49 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %50 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %5, align 8
  %53 = call i32 @RCU_INIT_POINTER(i32 %51, %struct.i915_gem_engines* %52)
  %54 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %55 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %54, i32 0, i32 5
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @INIT_RADIX_TREE(i32* %55, i32 %56)
  %58 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %59 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %58, i32 0, i32 4
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = call i32 @ALL_L3_SLICES(%struct.drm_i915_private* %61)
  %63 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %64 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %66 = call i32 @i915_gem_context_set_bannable(%struct.i915_gem_context* %65)
  %67 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %68 = call i32 @i915_gem_context_set_recoverable(%struct.i915_gem_context* %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %86, %48
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %72 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = call i32 @ARRAY_SIZE(i64* %73)
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i64, i64* @CONTEXT_FAST_HANG_JIFFIES, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %81 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %79, i64* %85, align 8
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %69

89:                                               ; preds = %69
  %90 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %91 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %90, i32 0, i32 1
  store i32* null, i32** %91, align 8
  %92 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %93 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  store %struct.i915_gem_context* %94, %struct.i915_gem_context** %2, align 8
  br label %100

95:                                               ; preds = %45
  %96 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %97 = call i32 @kfree(%struct.i915_gem_context* %96)
  %98 = load i32, i32* %6, align 4
  %99 = call %struct.i915_gem_context* @ERR_PTR(i32 %98)
  store %struct.i915_gem_context* %99, %struct.i915_gem_context** %2, align 8
  br label %100

100:                                              ; preds = %95, %89, %12
  %101 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  ret %struct.i915_gem_context* %101
}

declare dso_local %struct.i915_gem_context* @kzalloc(i32, i32) #1

declare dso_local %struct.i915_gem_context* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @I915_USER_PRIORITY(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.i915_gem_engines* @default_engines(%struct.i915_gem_context*) #1

declare dso_local i64 @IS_ERR(%struct.i915_gem_engines*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_gem_engines*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.i915_gem_engines*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ALL_L3_SLICES(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_context_set_bannable(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_set_recoverable(%struct.i915_gem_context*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @kfree(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
