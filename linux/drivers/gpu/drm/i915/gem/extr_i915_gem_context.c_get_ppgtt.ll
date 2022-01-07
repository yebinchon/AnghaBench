; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_get_ppgtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_get_ppgtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_file_private = type { i32, i32 }
%struct.i915_gem_context = type { %struct.TYPE_4__*, %struct.i915_address_space* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i915_address_space = type { i32 }
%struct.drm_i915_gem_context_param = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_file_private*, %struct.i915_gem_context*, %struct.drm_i915_gem_context_param*)* @get_ppgtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ppgtt(%struct.drm_i915_file_private* %0, %struct.i915_gem_context* %1, %struct.drm_i915_gem_context_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_file_private*, align 8
  %6 = alloca %struct.i915_gem_context*, align 8
  %7 = alloca %struct.drm_i915_gem_context_param*, align 8
  %8 = alloca %struct.i915_address_space*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_i915_file_private* %0, %struct.drm_i915_file_private** %5, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %6, align 8
  store %struct.drm_i915_gem_context_param* %2, %struct.drm_i915_gem_context_param** %7, align 8
  %10 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %11 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %10, i32 0, i32 1
  %12 = load %struct.i915_address_space*, %struct.i915_address_space** %11, align 8
  %13 = icmp ne %struct.i915_address_space* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %75

17:                                               ; preds = %3
  %18 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %19 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock_interruptible(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %75

28:                                               ; preds = %17
  %29 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %30 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %29, i32 0, i32 1
  %31 = load %struct.i915_address_space*, %struct.i915_address_space** %30, align 8
  %32 = call %struct.i915_address_space* @i915_vm_get(%struct.i915_address_space* %31)
  store %struct.i915_address_space* %32, %struct.i915_address_space** %8, align 8
  %33 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %34 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %40 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock_interruptible(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %71

45:                                               ; preds = %28
  %46 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %47 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %46, i32 0, i32 1
  %48 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @idr_alloc(i32* %47, %struct.i915_address_space* %48, i32 0, i32 0, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @GEM_BUG_ON(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %67

59:                                               ; preds = %45
  %60 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %61 = call %struct.i915_address_space* @i915_vm_get(%struct.i915_address_space* %60)
  %62 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %7, align 8
  %63 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %7, align 8
  %66 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %59, %58
  %68 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %69 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %67, %44
  %72 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %73 = call i32 @i915_vm_put(%struct.i915_address_space* %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %26, %14
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.i915_address_space* @i915_vm_get(%struct.i915_address_space*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.i915_address_space*, i32, i32, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_vm_put(%struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
