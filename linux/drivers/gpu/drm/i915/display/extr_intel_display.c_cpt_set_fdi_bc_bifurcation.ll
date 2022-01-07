; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_cpt_set_fdi_bc_bifurcation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_cpt_set_fdi_bc_bifurcation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SOUTH_CHICKEN1 = common dso_local global i32 0, align 4
@FDI_BC_BIFURCATION_SELECT = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@PIPE_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%sabling fdi C rx\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @cpt_set_fdi_bc_bifurcation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpt_set_fdi_bc_bifurcation(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SOUTH_CHICKEN1, align 4
  %7 = call i32 @I915_READ(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @FDI_BC_BIFURCATION_SELECT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %52

18:                                               ; preds = %2
  %19 = load i32, i32* @PIPE_B, align 4
  %20 = call i32 @FDI_RX_CTL(i32 %19)
  %21 = call i32 @I915_READ(i32 %20)
  %22 = load i32, i32* @FDI_RX_ENABLE, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* @PIPE_C, align 4
  %26 = call i32 @FDI_RX_CTL(i32 %25)
  %27 = call i32 @I915_READ(i32 %26)
  %28 = load i32, i32* @FDI_RX_ENABLE, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i32, i32* @FDI_BC_BIFURCATION_SELECT, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %18
  %38 = load i32, i32* @FDI_BC_BIFURCATION_SELECT, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %18
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @SOUTH_CHICKEN1, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  %50 = load i32, i32* @SOUTH_CHICKEN1, align 4
  %51 = call i32 @POSTING_READ(i32 %50)
  br label %52

52:                                               ; preds = %41, %17
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
