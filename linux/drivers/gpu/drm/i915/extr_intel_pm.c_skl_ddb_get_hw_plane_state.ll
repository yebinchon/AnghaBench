; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_ddb_get_hw_plane_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_ddb_get_hw_plane_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.skl_ddb_entry = type { i32 }

@PLANE_CURSOR = common dso_local global i32 0, align 4
@PLANE_CTL_ENABLE = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_MASK = common dso_local global i32 0, align 4
@PLANE_CTL_ORDER_RGBX = common dso_local global i32 0, align 4
@PLANE_CTL_ALPHA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32, %struct.skl_ddb_entry*, %struct.skl_ddb_entry*)* @skl_ddb_get_hw_plane_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_ddb_get_hw_plane_state(%struct.drm_i915_private* %0, i32 %1, i32 %2, %struct.skl_ddb_entry* %3, %struct.skl_ddb_entry* %4) #0 {
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.skl_ddb_entry*, align 8
  %10 = alloca %struct.skl_ddb_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.skl_ddb_entry* %3, %struct.skl_ddb_entry** %9, align 8
  store %struct.skl_ddb_entry* %4, %struct.skl_ddb_entry** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PLANE_CURSOR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @CUR_BUF_CFG(i32 %18)
  %20 = call i32 @I915_READ(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %22 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @skl_ddb_entry_init_from_hw(%struct.drm_i915_private* %21, %struct.skl_ddb_entry* %22, i32 %23)
  br label %83

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @PLANE_CTL(i32 %26, i32 %27)
  %29 = call i32 @I915_READ(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PLANE_CTL_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @PLANE_CTL_FORMAT_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @PLANE_CTL_ORDER_RGBX, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @PLANE_CTL_ALPHA_MASK, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @skl_format_to_fourcc(i32 %37, i32 %40, i32 %43)
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %34, %25
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = call i32 @INTEL_GEN(%struct.drm_i915_private* %46)
  %48 = icmp sge i32 %47, 11
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @PLANE_BUF_CFG(i32 %50, i32 %51)
  %53 = call i32 @I915_READ(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %55 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @skl_ddb_entry_init_from_hw(%struct.drm_i915_private* %54, %struct.skl_ddb_entry* %55, i32 %56)
  br label %83

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @PLANE_BUF_CFG(i32 %59, i32 %60)
  %62 = call i32 @I915_READ(i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @PLANE_NV12_BUF_CFG(i32 %63, i32 %64)
  %66 = call i32 @I915_READ(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @is_planar_yuv_format(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @swap(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %58
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %76 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @skl_ddb_entry_init_from_hw(%struct.drm_i915_private* %75, %struct.skl_ddb_entry* %76, i32 %77)
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %80 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %10, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @skl_ddb_entry_init_from_hw(%struct.drm_i915_private* %79, %struct.skl_ddb_entry* %80, i32 %81)
  br label %83

83:                                               ; preds = %17, %74, %49
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CUR_BUF_CFG(i32) #1

declare dso_local i32 @skl_ddb_entry_init_from_hw(%struct.drm_i915_private*, %struct.skl_ddb_entry*, i32) #1

declare dso_local i32 @PLANE_CTL(i32, i32) #1

declare dso_local i32 @skl_format_to_fourcc(i32, i32, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @PLANE_BUF_CFG(i32, i32) #1

declare dso_local i32 @PLANE_NV12_BUF_CFG(i32, i32) #1

declare dso_local i64 @is_planar_yuv_format(i32) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
