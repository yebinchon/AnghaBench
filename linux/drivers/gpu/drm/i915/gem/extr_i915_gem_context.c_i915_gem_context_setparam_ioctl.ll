; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_setparam_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_setparam_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32 }
%struct.drm_i915_gem_context_param = type { i32 }
%struct.i915_gem_context = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_context_setparam_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_file_private*, align 8
  %9 = alloca %struct.drm_i915_gem_context_param*, align 8
  %10 = alloca %struct.i915_gem_context*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %13, align 8
  store %struct.drm_i915_file_private* %14, %struct.drm_i915_file_private** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_i915_gem_context_param*
  store %struct.drm_i915_gem_context_param* %16, %struct.drm_i915_gem_context_param** %9, align 8
  %17 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %8, align 8
  %18 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.i915_gem_context* @i915_gem_context_lookup(%struct.drm_i915_file_private* %17, i32 %20)
  store %struct.i915_gem_context* %21, %struct.i915_gem_context** %10, align 8
  %22 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %23 = icmp ne %struct.i915_gem_context* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %8, align 8
  %29 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %30 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %31 = call i32 @ctx_setparam(%struct.drm_i915_file_private* %28, %struct.i915_gem_context* %29, %struct.drm_i915_gem_context_param* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %33 = call i32 @i915_gem_context_put(%struct.i915_gem_context* %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %27, %24
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.i915_gem_context* @i915_gem_context_lookup(%struct.drm_i915_file_private*, i32) #1

declare dso_local i32 @ctx_setparam(%struct.drm_i915_file_private*, %struct.i915_gem_context*, %struct.drm_i915_gem_context_param*) #1

declare dso_local i32 @i915_gem_context_put(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
