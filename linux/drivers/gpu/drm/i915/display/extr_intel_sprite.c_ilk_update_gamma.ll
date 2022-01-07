; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_ilk_update_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_ilk_update_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.intel_plane = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane_state*)* @ilk_update_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_update_gamma(%struct.intel_plane_state* %0) #0 {
  %2 = alloca %struct.intel_plane_state*, align 8
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [17 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %2, align 8
  %9 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %10 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.intel_plane* @to_intel_plane(i32 %12)
  store %struct.intel_plane* %13, %struct.intel_plane** %3, align 8
  %14 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %15 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %4, align 8
  %19 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %20 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %21, align 8
  store %struct.drm_framebuffer* %22, %struct.drm_framebuffer** %5, align 8
  %23 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %24 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %27 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  br label %87

33:                                               ; preds = %1
  %34 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 0
  %35 = call i32 @ilk_sprite_linear_gamma(i32* %34)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %60, %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 16
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @DVSGAMC_ILK(i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 20
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 10
  %53 = or i32 %47, %52
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %53, %57
  %59 = call i32 @I915_WRITE_FW(i32 %42, i32 %58)
  br label %60

60:                                               ; preds = %39
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @DVSGAMCMAX_ILK(i32 %64, i32 0)
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @I915_WRITE_FW(i32 %65, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @DVSGAMCMAX_ILK(i32 %71, i32 1)
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @I915_WRITE_FW(i32 %72, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @DVSGAMCMAX_ILK(i32 %78, i32 2)
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @I915_WRITE_FW(i32 %79, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %63, %32
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ilk_sprite_linear_gamma(i32*) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @DVSGAMC_ILK(i32, i32) #1

declare dso_local i32 @DVSGAMCMAX_ILK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
