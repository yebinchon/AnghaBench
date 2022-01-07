; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_i9xx_pipe_crc_ctl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_i9xx_pipe_crc_ctl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@INTEL_PIPE_CRC_SOURCE_AUTO = common dso_local global i32 0, align 4
@PIPE_CRC_ENABLE = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_PIPE_I9XX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_TV_PRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32*, i32*)* @i9xx_pipe_crc_ctl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_pipe_crc_ctl_reg(%struct.drm_i915_private* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @INTEL_PIPE_CRC_SOURCE_AUTO, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @i9xx_pipe_crc_auto_source(%struct.drm_i915_private* %16, i32 %17, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %51

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %47 [
    i32 129, label %28
    i32 128, label %33
    i32 130, label %45
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %30 = load i32, i32* @PIPE_CRC_SOURCE_PIPE_I9XX, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %35 = call i32 @SUPPORTS_TV(%struct.drm_i915_private* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %51

40:                                               ; preds = %33
  %41 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %42 = load i32, i32* @PIPE_CRC_SOURCE_TV_PRE, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %50

45:                                               ; preds = %25
  %46 = load i32*, i32** %9, align 8
  store i32 0, i32* %46, align 4
  br label %50

47:                                               ; preds = %25
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %45, %40, %28
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %47, %37, %22
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @i9xx_pipe_crc_auto_source(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @SUPPORTS_TV(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
