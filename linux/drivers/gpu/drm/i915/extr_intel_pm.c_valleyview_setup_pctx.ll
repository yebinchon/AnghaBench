; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_valleyview_setup_pctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_valleyview_setup_pctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.drm_i915_gem_object*, %struct.TYPE_3__ }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VLV_PCBR = common dso_local global i32 0, align 4
@I915_GTT_OFFSET_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BIOS didn't set up PCBR, fixing up\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"not enough stolen space for PCTX, disabling\0A\00", align 1
@u64 = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"PCBR: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @valleyview_setup_pctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @valleyview_setup_pctx(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  store i32 24576, i32* %5, align 4
  %8 = load i32, i32* @VLV_PCBR, align 4
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, -4096
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %14, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @I915_GTT_OFFSET_NONE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.drm_i915_gem_object* @i915_gem_object_create_stolen_for_preallocated(%struct.drm_i915_private* %20, i32 %21, i32 %22, i32 %23)
  store %struct.drm_i915_gem_object* %24, %struct.drm_i915_gem_object** %3, align 8
  br label %61

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.drm_i915_gem_object* @i915_gem_object_create_stolen(%struct.drm_i915_private* %27, i32 %28)
  store %struct.drm_i915_gem_object* %29, %struct.drm_i915_gem_object** %3, align 8
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %31 = icmp ne %struct.drm_i915_gem_object* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %61

34:                                               ; preds = %25
  %35 = load i32, i32* @u64, align 4
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @U32_MAX, align 4
  %46 = call i32 @range_overflows_t(i32 %35, i32 %39, i32 %44, i32 %45)
  %47 = call i32 @GEM_BUG_ON(i32 %46)
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %51, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @VLV_PCBR, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @I915_WRITE(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %34, %32, %12
  %62 = load i32, i32* @VLV_PCBR, align 4
  %63 = call i32 @I915_READ(i32 %62)
  %64 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %67 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %66, i32 0, i32 0
  store %struct.drm_i915_gem_object* %65, %struct.drm_i915_gem_object** %67, align 8
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_stolen_for_preallocated(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_stolen(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @range_overflows_t(i32, i32, i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
