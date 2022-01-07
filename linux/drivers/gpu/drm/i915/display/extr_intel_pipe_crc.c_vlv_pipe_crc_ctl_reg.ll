; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_vlv_pipe_crc_ctl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_vlv_pipe_crc_ctl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@INTEL_PIPE_CRC_SOURCE_AUTO = common dso_local global i32 0, align 4
@PIPE_CRC_ENABLE = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_PIPE_VLV = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_DP_B_VLV = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_DP_C_VLV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_DP_D_VLV = common dso_local global i32 0, align 4
@PORT_DFT2_G4X = common dso_local global i32 0, align 4
@DC_BALANCE_RESET_VLV = common dso_local global i32 0, align 4
@PIPE_A_SCRAMBLE_RESET = common dso_local global i32 0, align 4
@PIPE_B_SCRAMBLE_RESET = common dso_local global i32 0, align 4
@PIPE_C_SCRAMBLE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32*, i32*)* @vlv_pipe_crc_ctl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_pipe_crc_ctl_reg(%struct.drm_i915_private* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INTEL_PIPE_CRC_SOURCE_AUTO, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @i9xx_pipe_crc_auto_source(%struct.drm_i915_private* %18, i32 %19, i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %92

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %59 [
    i32 131, label %30
    i32 135, label %35
    i32 134, label %40
    i32 133, label %45
    i32 132, label %57
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %32 = load i32, i32* @PIPE_CRC_SOURCE_PIPE_VLV, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %62

35:                                               ; preds = %27
  %36 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %37 = load i32, i32* @PIPE_CRC_SOURCE_DP_B_VLV, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %10, align 4
  br label %62

40:                                               ; preds = %27
  %41 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %42 = load i32, i32* @PIPE_CRC_SOURCE_DP_C_VLV, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %10, align 4
  br label %62

45:                                               ; preds = %27
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = call i32 @IS_CHERRYVIEW(%struct.drm_i915_private* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %92

52:                                               ; preds = %45
  %53 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %54 = load i32, i32* @PIPE_CRC_SOURCE_DP_D_VLV, align 4
  %55 = or i32 %53, %54
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  store i32 1, i32* %10, align 4
  br label %62

57:                                               ; preds = %27
  %58 = load i32*, i32** %9, align 8
  store i32 0, i32* %58, align 4
  br label %62

59:                                               ; preds = %27
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %92

62:                                               ; preds = %57, %52, %40, %35, %30
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load i32, i32* @PORT_DFT2_G4X, align 4
  %67 = call i32 @I915_READ(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* @DC_BALANCE_RESET_VLV, align 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  switch i32 %71, label %84 [
    i32 130, label %72
    i32 129, label %76
    i32 128, label %80
  ]

72:                                               ; preds = %65
  %73 = load i32, i32* @PIPE_A_SCRAMBLE_RESET, align 4
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %87

76:                                               ; preds = %65
  %77 = load i32, i32* @PIPE_B_SCRAMBLE_RESET, align 4
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  br label %87

80:                                               ; preds = %65
  %81 = load i32, i32* @PIPE_C_SCRAMBLE_RESET, align 4
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %87

84:                                               ; preds = %65
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %92

87:                                               ; preds = %80, %76, %72
  %88 = load i32, i32* @PORT_DFT2_G4X, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @I915_WRITE(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %62
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %84, %59, %49, %24
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @i9xx_pipe_crc_auto_source(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
