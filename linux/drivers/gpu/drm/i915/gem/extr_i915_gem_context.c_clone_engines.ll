; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_clone_engines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_clone_engines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32 }
%struct.i915_gem_engines = type { i64, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { %struct.intel_engine_cs* }
%struct.intel_engine_cs = type { i32 }

@engines = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*, %struct.i915_gem_context*)* @clone_engines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_engines(%struct.i915_gem_context* %0, %struct.i915_gem_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca %struct.i915_gem_engines*, align 8
  %7 = alloca %struct.i915_gem_engines*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.intel_engine_cs*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %4, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %5, align 8
  %11 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %12 = call %struct.i915_gem_engines* @i915_gem_context_lock_engines(%struct.i915_gem_context* %11)
  store %struct.i915_gem_engines* %12, %struct.i915_gem_engines** %6, align 8
  %13 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %6, align 8
  %14 = load i32, i32* @engines, align 4
  %15 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %6, align 8
  %16 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @struct_size(%struct.i915_gem_engines* %13, i32 %14, i64 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.i915_gem_engines* @kmalloc(i32 %18, i32 %19)
  store %struct.i915_gem_engines* %20, %struct.i915_gem_engines** %7, align 8
  %21 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %22 = icmp ne %struct.i915_gem_engines* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %121

24:                                               ; preds = %2
  %25 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %26 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %25, i32 0, i32 2
  %27 = call i32 @init_rcu_head(i32* %26)
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %92, %24
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %6, align 8
  %31 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %95

34:                                               ; preds = %28
  %35 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %6, align 8
  %36 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %44 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %46
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %47, align 8
  br label %92

48:                                               ; preds = %34
  %49 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %6, align 8
  %50 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %55, align 8
  store %struct.intel_engine_cs* %56, %struct.intel_engine_cs** %10, align 8
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %10, align 8
  %58 = call i64 @intel_engine_is_virtual(%struct.intel_engine_cs* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  %61 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %62 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %10, align 8
  %63 = call %struct.TYPE_4__* @intel_execlists_clone_virtual(%struct.i915_gem_context* %61, %struct.intel_engine_cs* %62)
  %64 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %65 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %67
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %68, align 8
  br label %78

69:                                               ; preds = %48
  %70 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %71 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %10, align 8
  %72 = call %struct.TYPE_4__* @intel_context_create(%struct.i915_gem_context* %70, %struct.intel_engine_cs* %71)
  %73 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %74 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %76
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %77, align 8
  br label %78

78:                                               ; preds = %69, %60
  %79 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %80 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %81, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_4__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @__free_engines(%struct.i915_gem_engines* %88, i64 %89)
  br label %121

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %42
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %9, align 8
  br label %28

95:                                               ; preds = %28
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %98 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %100 = call i32 @i915_gem_context_user_engines(%struct.i915_gem_context* %99)
  store i32 %100, i32* %8, align 4
  %101 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %102 = call i32 @i915_gem_context_unlock_engines(%struct.i915_gem_context* %101)
  %103 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %104 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @free_engines(i32 %105)
  %107 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %108 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %111 = call i32 @RCU_INIT_POINTER(i32 %109, %struct.i915_gem_engines* %110)
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %95
  %115 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %116 = call i32 @i915_gem_context_set_user_engines(%struct.i915_gem_context* %115)
  br label %120

117:                                              ; preds = %95
  %118 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %119 = call i32 @i915_gem_context_clear_user_engines(%struct.i915_gem_context* %118)
  br label %120

120:                                              ; preds = %117, %114
  store i32 0, i32* %3, align 4
  br label %126

121:                                              ; preds = %87, %23
  %122 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %123 = call i32 @i915_gem_context_unlock_engines(%struct.i915_gem_context* %122)
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %120
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.i915_gem_engines* @i915_gem_context_lock_engines(%struct.i915_gem_context*) #1

declare dso_local %struct.i915_gem_engines* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.i915_gem_engines*, i32, i64) #1

declare dso_local i32 @init_rcu_head(i32*) #1

declare dso_local i64 @intel_engine_is_virtual(%struct.intel_engine_cs*) #1

declare dso_local %struct.TYPE_4__* @intel_execlists_clone_virtual(%struct.i915_gem_context*, %struct.intel_engine_cs*) #1

declare dso_local %struct.TYPE_4__* @intel_context_create(%struct.i915_gem_context*, %struct.intel_engine_cs*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_4__*) #1

declare dso_local i32 @__free_engines(%struct.i915_gem_engines*, i64) #1

declare dso_local i32 @i915_gem_context_user_engines(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_unlock_engines(%struct.i915_gem_context*) #1

declare dso_local i32 @free_engines(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.i915_gem_engines*) #1

declare dso_local i32 @i915_gem_context_set_user_engines(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_clear_user_engines(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
