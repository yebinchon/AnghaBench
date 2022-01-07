; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_set_ppgtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_set_ppgtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_file_private = type { i32, i32 }
%struct.i915_gem_context = type { %struct.TYPE_4__*, i32, %struct.i915_address_space* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i915_address_space = type { i32 }
%struct.drm_i915_gem_context_param = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ALL_ENGINES = common dso_local global i32 0, align 4
@skip_ppgtt_update = common dso_local global i32 0, align 4
@emit_ppgtt_update = common dso_local global i32 0, align 4
@set_ppgtt_barrier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_file_private*, %struct.i915_gem_context*, %struct.drm_i915_gem_context_param*)* @set_ppgtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ppgtt(%struct.drm_i915_file_private* %0, %struct.i915_gem_context* %1, %struct.drm_i915_gem_context_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_file_private*, align 8
  %6 = alloca %struct.i915_gem_context*, align 8
  %7 = alloca %struct.drm_i915_gem_context_param*, align 8
  %8 = alloca %struct.i915_address_space*, align 8
  %9 = alloca %struct.i915_address_space*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_i915_file_private* %0, %struct.drm_i915_file_private** %5, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %6, align 8
  store %struct.drm_i915_gem_context_param* %2, %struct.drm_i915_gem_context_param** %7, align 8
  %11 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %7, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %121

18:                                               ; preds = %3
  %19 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %20 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %19, i32 0, i32 2
  %21 = load %struct.i915_address_space*, %struct.i915_address_space** %20, align 8
  %22 = icmp ne %struct.i915_address_space* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %121

26:                                               ; preds = %18
  %27 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %7, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @upper_32_bits(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %121

35:                                               ; preds = %26
  %36 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %37 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock_interruptible(i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %121

43:                                               ; preds = %35
  %44 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %45 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %44, i32 0, i32 1
  %46 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %7, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.i915_address_space* @idr_find(i32* %45, i32 %48)
  store %struct.i915_address_space* %49, %struct.i915_address_space** %8, align 8
  %50 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %51 = icmp ne %struct.i915_address_space* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %54 = call i32 @i915_vm_get(%struct.i915_address_space* %53)
  br label %55

55:                                               ; preds = %52, %43
  %56 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %57 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %60 = icmp ne %struct.i915_address_space* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %121

64:                                               ; preds = %55
  %65 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %66 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock_interruptible(i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %117

74:                                               ; preds = %64
  %75 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %76 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %77 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %76, i32 0, i32 2
  %78 = load %struct.i915_address_space*, %struct.i915_address_space** %77, align 8
  %79 = icmp eq %struct.i915_address_space* %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %110

81:                                               ; preds = %74
  %82 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %83 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %82, i32 0, i32 1
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %86 = call i32 @lut_close(%struct.i915_gem_context* %85)
  %87 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %88 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %91 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %92 = call %struct.i915_address_space* @__set_ppgtt(%struct.i915_gem_context* %90, %struct.i915_address_space* %91)
  store %struct.i915_address_space* %92, %struct.i915_address_space** %9, align 8
  %93 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %94 = load i32, i32* @ALL_ENGINES, align 4
  %95 = load i32, i32* @skip_ppgtt_update, align 4
  %96 = load i32, i32* @emit_ppgtt_update, align 4
  %97 = load i32, i32* @set_ppgtt_barrier, align 4
  %98 = load %struct.i915_address_space*, %struct.i915_address_space** %9, align 8
  %99 = call i32 @context_barrier_task(%struct.i915_gem_context* %93, i32 %94, i32 %95, i32 %96, i32 %97, %struct.i915_address_space* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %81
  %103 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %104 = load %struct.i915_address_space*, %struct.i915_address_space** %9, align 8
  %105 = call %struct.i915_address_space* @__set_ppgtt(%struct.i915_gem_context* %103, %struct.i915_address_space* %104)
  %106 = call i32 @i915_vm_put(%struct.i915_address_space* %105)
  %107 = load %struct.i915_address_space*, %struct.i915_address_space** %9, align 8
  %108 = call i32 @i915_vm_put(%struct.i915_address_space* %107)
  br label %109

109:                                              ; preds = %102, %81
  br label %110

110:                                              ; preds = %109, %80
  %111 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %112 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  br label %117

117:                                              ; preds = %110, %73
  %118 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %119 = call i32 @i915_vm_put(%struct.i915_address_space* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %117, %61, %41, %32, %23, %15
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.i915_address_space* @idr_find(i32*, i32) #1

declare dso_local i32 @i915_vm_get(%struct.i915_address_space*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lut_close(%struct.i915_gem_context*) #1

declare dso_local %struct.i915_address_space* @__set_ppgtt(%struct.i915_gem_context*, %struct.i915_address_space*) #1

declare dso_local i32 @context_barrier_task(%struct.i915_gem_context*, i32, i32, i32, i32, %struct.i915_address_space*) #1

declare dso_local i32 @i915_vm_put(%struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
