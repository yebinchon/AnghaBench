; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_ivb_update_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_ivb_update_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_plane = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane_state*)* @ivb_update_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_update_gamma(%struct.intel_plane_state* %0) #0 {
  %2 = alloca %struct.intel_plane_state*, align 8
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [18 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %2, align 8
  %8 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %9 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_plane* @to_intel_plane(i32 %11)
  store %struct.intel_plane* %12, %struct.intel_plane** %3, align 8
  %13 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %14 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %4, align 8
  %18 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %19 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 0
  %22 = call i32 @ivb_sprite_linear_gamma(i32* %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %47, %1
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @SPRGAMC(i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 20
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 10
  %40 = or i32 %34, %39
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %40, %44
  %46 = call i32 @I915_WRITE_FW(i32 %29, i32 %45)
  br label %47

47:                                               ; preds = %26
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @SPRGAMC16(i32 %51, i32 0)
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @I915_WRITE_FW(i32 %52, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @SPRGAMC16(i32 %58, i32 1)
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @I915_WRITE_FW(i32 %59, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @SPRGAMC16(i32 %65, i32 2)
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @I915_WRITE_FW(i32 %66, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @SPRGAMC17(i32 %74, i32 0)
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @I915_WRITE_FW(i32 %75, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @SPRGAMC17(i32 %81, i32 1)
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @I915_WRITE_FW(i32 %82, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @SPRGAMC17(i32 %88, i32 2)
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @I915_WRITE_FW(i32 %89, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ivb_sprite_linear_gamma(i32*) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @SPRGAMC(i32, i32) #1

declare dso_local i32 @SPRGAMC16(i32, i32) #1

declare dso_local i32 @SPRGAMC17(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
