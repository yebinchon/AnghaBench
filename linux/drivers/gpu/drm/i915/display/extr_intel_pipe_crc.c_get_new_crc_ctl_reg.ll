; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_get_new_crc_ctl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_get_new_crc_ctl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32*, i32*)* @get_new_crc_ctl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_new_crc_ctl_reg(%struct.drm_i915_private* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %11 = call i64 @IS_GEN(%struct.drm_i915_private* %10, i32 2)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @i8xx_pipe_crc_ctl_reg(i32* %14, i32* %15)
  store i32 %16, i32* %5, align 4
  br label %65

17:                                               ; preds = %4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = call i32 @INTEL_GEN(%struct.drm_i915_private* %18)
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @i9xx_pipe_crc_ctl_reg(%struct.drm_i915_private* %22, i32 %23, i32* %24, i32* %25)
  store i32 %26, i32* %5, align 4
  br label %65

27:                                               ; preds = %17
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %29 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %33 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %27
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @vlv_pipe_crc_ctl_reg(%struct.drm_i915_private* %36, i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %5, align 4
  br label %65

41:                                               ; preds = %31
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %43 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %42, i32 5, i32 6)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @ilk_pipe_crc_ctl_reg(i32* %46, i32* %47)
  store i32 %48, i32* %5, align 4
  br label %65

49:                                               ; preds = %41
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %51 = call i32 @INTEL_GEN(%struct.drm_i915_private* %50)
  %52 = icmp slt i32 %51, 9
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @ivb_pipe_crc_ctl_reg(%struct.drm_i915_private* %54, i32 %55, i32* %56, i32* %57)
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @skl_pipe_crc_ctl_reg(%struct.drm_i915_private* %60, i32 %61, i32* %62, i32* %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %53, %45, %35, %21, %13
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @i8xx_pipe_crc_ctl_reg(i32*, i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @i9xx_pipe_crc_ctl_reg(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_pipe_crc_ctl_reg(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @ilk_pipe_crc_ctl_reg(i32*, i32*) #1

declare dso_local i32 @ivb_pipe_crc_ctl_reg(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i32 @skl_pipe_crc_ctl_reg(%struct.drm_i915_private*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
