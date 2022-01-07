; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_sw_finish_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_sw_finish_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_sw_finish = type { i32 }
%struct.drm_i915_gem_object = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_sw_finish_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_sw_finish*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_i915_gem_sw_finish*
  store %struct.drm_i915_gem_sw_finish* %11, %struct.drm_i915_gem_sw_finish** %8, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_i915_gem_sw_finish*, %struct.drm_i915_gem_sw_finish** %8, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_sw_finish, %struct.drm_i915_gem_sw_finish* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file* %12, i32 %15)
  store %struct.drm_i915_gem_object* %16, %struct.drm_i915_gem_object** %9, align 8
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %18 = icmp ne %struct.drm_i915_gem_object* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %24 = call i32 @i915_gem_object_flush_if_display(%struct.drm_i915_gem_object* %23)
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %26 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @i915_gem_object_flush_if_display(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
