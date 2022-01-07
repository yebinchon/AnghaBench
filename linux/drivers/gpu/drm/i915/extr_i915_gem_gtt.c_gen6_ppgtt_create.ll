; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_ppgtt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_ppgtt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ppgtt = type { %struct.gen6_ppgtt*, %struct.TYPE_4__ }
%struct.gen6_ppgtt = type { %struct.i915_ppgtt, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32, %struct.i915_ggtt }
%struct.i915_ggtt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gen6_alloc_va_range = common dso_local global i32 0, align 4
@gen6_ppgtt_clear_range = common dso_local global i32 0, align 4
@gen6_ppgtt_insert_entries = common dso_local global i32 0, align 4
@gen6_ppgtt_cleanup = common dso_local global i32 0, align 4
@GEN6_PD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_ppgtt* (%struct.drm_i915_private*)* @gen6_ppgtt_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_ppgtt* @gen6_ppgtt_create(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.i915_ppgtt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_ggtt*, align 8
  %5 = alloca %struct.gen6_ppgtt*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 1
  store %struct.i915_ggtt* %8, %struct.i915_ggtt** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gen6_ppgtt* @kzalloc(i32 40, i32 %9)
  store %struct.gen6_ppgtt* %10, %struct.gen6_ppgtt** %5, align 8
  %11 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %12 = icmp ne %struct.gen6_ppgtt* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.i915_ppgtt* @ERR_PTR(i32 %15)
  store %struct.i915_ppgtt* %16, %struct.i915_ppgtt** %2, align 8
  br label %108

17:                                               ; preds = %1
  %18 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %19 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %18, i32 0, i32 0
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = call i32 @ppgtt_init(%struct.i915_ppgtt* %19, i32* %21)
  %23 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %24 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @gen6_alloc_va_range, align 4
  %28 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %29 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @gen6_ppgtt_clear_range, align 4
  %33 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %34 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* @gen6_ppgtt_insert_entries, align 4
  %38 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %39 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @gen6_ppgtt_cleanup, align 4
  %43 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %44 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %42, i32* %46, align 8
  %47 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %48 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %52 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = call %struct.gen6_ppgtt* @__alloc_pd(i32 40)
  %56 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %57 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %57, i32 0, i32 0
  store %struct.gen6_ppgtt* %55, %struct.gen6_ppgtt** %58, align 8
  %59 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %60 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %60, i32 0, i32 0
  %62 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %61, align 8
  %63 = icmp ne %struct.gen6_ppgtt* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %17
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %103

67:                                               ; preds = %17
  %68 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %69 = call i32 @gen6_ppgtt_init_scratch(%struct.gen6_ppgtt* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %97

73:                                               ; preds = %67
  %74 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %75 = load i32, i32* @GEN6_PD_SIZE, align 4
  %76 = call i32 @pd_vma_create(%struct.gen6_ppgtt* %74, i32 %75)
  %77 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %78 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %80 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %86 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %6, align 4
  br label %92

89:                                               ; preds = %73
  %90 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %91 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %90, i32 0, i32 0
  store %struct.i915_ppgtt* %91, %struct.i915_ppgtt** %2, align 8
  br label %108

92:                                               ; preds = %84
  %93 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %94 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %94, i32 0, i32 1
  %96 = call i32 @free_scratch(%struct.TYPE_4__* %95)
  br label %97

97:                                               ; preds = %92, %72
  %98 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %99 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %99, i32 0, i32 0
  %101 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %100, align 8
  %102 = call i32 @kfree(%struct.gen6_ppgtt* %101)
  br label %103

103:                                              ; preds = %97, %64
  %104 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %5, align 8
  %105 = call i32 @kfree(%struct.gen6_ppgtt* %104)
  %106 = load i32, i32* %6, align 4
  %107 = call %struct.i915_ppgtt* @ERR_PTR(i32 %106)
  store %struct.i915_ppgtt* %107, %struct.i915_ppgtt** %2, align 8
  br label %108

108:                                              ; preds = %103, %89, %13
  %109 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %2, align 8
  ret %struct.i915_ppgtt* %109
}

declare dso_local %struct.gen6_ppgtt* @kzalloc(i32, i32) #1

declare dso_local %struct.i915_ppgtt* @ERR_PTR(i32) #1

declare dso_local i32 @ppgtt_init(%struct.i915_ppgtt*, i32*) #1

declare dso_local %struct.gen6_ppgtt* @__alloc_pd(i32) #1

declare dso_local i32 @gen6_ppgtt_init_scratch(%struct.gen6_ppgtt*) #1

declare dso_local i32 @pd_vma_create(%struct.gen6_ppgtt*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @free_scratch(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.gen6_ppgtt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
