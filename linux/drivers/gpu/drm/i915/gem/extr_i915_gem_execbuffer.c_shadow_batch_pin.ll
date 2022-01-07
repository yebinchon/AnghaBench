; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_shadow_batch_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_shadow_batch_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.i915_address_space* }
%struct.i915_address_space = type { i64 }
%struct.i915_execbuffer = type { %struct.i915_vma**, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i915_address_space }
%struct.drm_i915_gem_object = type { i32 }

@PIN_GLOBAL = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Cannot prevent post-scan tampering without RO capable vm\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.i915_execbuffer*, %struct.drm_i915_gem_object*)* @shadow_batch_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @shadow_batch_pin(%struct.i915_execbuffer* %0, %struct.drm_i915_gem_object* %1) #0 {
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca %struct.i915_execbuffer*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.i915_vma*, align 8
  %8 = alloca %struct.i915_address_space*, align 8
  %9 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %4, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %5, align 8
  %10 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %11 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %10, i32 0, i32 1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %6, align 8
  %13 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %14 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 0
  %15 = load %struct.i915_vma**, %struct.i915_vma*** %14, align 8
  %16 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  store %struct.i915_vma* %16, %struct.i915_vma** %7, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = call i64 @CMDPARSER_USES_GGTT(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @PIN_GLOBAL, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.i915_address_space* %24, %struct.i915_address_space** %8, align 8
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %27 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %26, i32 0, i32 0
  %28 = load %struct.i915_address_space*, %struct.i915_address_space** %27, align 8
  %29 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @PIN_USER, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %35 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %34, i32 0, i32 0
  %36 = load %struct.i915_address_space*, %struct.i915_address_space** %35, align 8
  store %struct.i915_address_space* %36, %struct.i915_address_space** %8, align 8
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %38 = call i32 @i915_gem_object_set_readonly(%struct.drm_i915_gem_object* %37)
  br label %44

39:                                               ; preds = %25
  %40 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.i915_vma* @ERR_PTR(i32 %42)
  store %struct.i915_vma* %43, %struct.i915_vma** %3, align 8
  br label %50

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %47 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.i915_vma* @i915_gem_object_pin(%struct.drm_i915_gem_object* %46, %struct.i915_address_space* %47, i32* null, i32 0, i32 0, i32 %48)
  store %struct.i915_vma* %49, %struct.i915_vma** %3, align 8
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  ret %struct.i915_vma* %51
}

declare dso_local i64 @CMDPARSER_USES_GGTT(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_object_set_readonly(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_pin(%struct.drm_i915_gem_object*, %struct.i915_address_space*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
