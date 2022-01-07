; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_mock_context.c_mock_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_mock_context.c_mock_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32, i32, i32, i32, i32, i32, %struct.drm_i915_private*, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.i915_gem_engines = type { i32 }
%struct.i915_ppgtt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_gem_context* @mock_context(%struct.drm_i915_private* %0, i8* %1) #0 {
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i915_gem_context*, align 8
  %7 = alloca %struct.i915_gem_engines*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i915_ppgtt*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.i915_gem_context* @kzalloc(i32 40, i32 %10)
  store %struct.i915_gem_context* %11, %struct.i915_gem_context** %6, align 8
  %12 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %13 = icmp ne %struct.i915_gem_context* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.i915_gem_context* null, %struct.i915_gem_context** %3, align 8
  br label %100

15:                                               ; preds = %2
  %16 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %17 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %16, i32 0, i32 8
  %18 = call i32 @kref_init(i32* %17)
  %19 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %20 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %19, i32 0, i32 7
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %24 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %23, i32 0, i32 6
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %24, align 8
  %25 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %26 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %25, i32 0, i32 5
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %29 = call %struct.i915_gem_engines* @default_engines(%struct.i915_gem_context* %28)
  store %struct.i915_gem_engines* %29, %struct.i915_gem_engines** %7, align 8
  %30 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %31 = call i64 @IS_ERR(%struct.i915_gem_engines* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %92

34:                                               ; preds = %15
  %35 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %36 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  %39 = call i32 @RCU_INIT_POINTER(i32 %37, %struct.i915_gem_engines* %38)
  %40 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %41 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %40, i32 0, i32 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @INIT_RADIX_TREE(i32* %41, i32 %42)
  %44 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %45 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %44, i32 0, i32 3
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %48 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %47, i32 0, i32 2
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %51 = call i32 @i915_gem_context_pin_hw_id(%struct.i915_gem_context* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %86

55:                                               ; preds = %34
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @kstrdup(i8* %59, i32 %60)
  %62 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %63 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %65 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %95

69:                                               ; preds = %58
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call %struct.i915_ppgtt* @mock_ppgtt(%struct.drm_i915_private* %70, i8* %71)
  store %struct.i915_ppgtt* %72, %struct.i915_ppgtt** %9, align 8
  %73 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %9, align 8
  %74 = icmp ne %struct.i915_ppgtt* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %95

76:                                               ; preds = %69
  %77 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %78 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %9, align 8
  %79 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %78, i32 0, i32 0
  %80 = call i32 @__set_ppgtt(%struct.i915_gem_context* %77, i32* %79)
  %81 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %9, align 8
  %82 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %81, i32 0, i32 0
  %83 = call i32 @i915_vm_put(i32* %82)
  br label %84

84:                                               ; preds = %76, %55
  %85 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  store %struct.i915_gem_context* %85, %struct.i915_gem_context** %3, align 8
  br label %100

86:                                               ; preds = %54
  %87 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %88 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @rcu_access_pointer(i32 %89)
  %91 = call i32 @free_engines(i32 %90)
  br label %92

92:                                               ; preds = %86, %33
  %93 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %94 = call i32 @kfree(%struct.i915_gem_context* %93)
  store %struct.i915_gem_context* null, %struct.i915_gem_context** %3, align 8
  br label %100

95:                                               ; preds = %75, %68
  %96 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %97 = call i32 @i915_gem_context_set_closed(%struct.i915_gem_context* %96)
  %98 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %99 = call i32 @i915_gem_context_put(%struct.i915_gem_context* %98)
  store %struct.i915_gem_context* null, %struct.i915_gem_context** %3, align 8
  br label %100

100:                                              ; preds = %95, %92, %84, %14
  %101 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  ret %struct.i915_gem_context* %101
}

declare dso_local %struct.i915_gem_context* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.i915_gem_engines* @default_engines(%struct.i915_gem_context*) #1

declare dso_local i64 @IS_ERR(%struct.i915_gem_engines*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.i915_gem_engines*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @i915_gem_context_pin_hw_id(%struct.i915_gem_context*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local %struct.i915_ppgtt* @mock_ppgtt(%struct.drm_i915_private*, i8*) #1

declare dso_local i32 @__set_ppgtt(%struct.i915_gem_context*, i32*) #1

declare dso_local i32 @i915_vm_put(i32*) #1

declare dso_local i32 @free_engines(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @kfree(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_set_closed(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_put(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
