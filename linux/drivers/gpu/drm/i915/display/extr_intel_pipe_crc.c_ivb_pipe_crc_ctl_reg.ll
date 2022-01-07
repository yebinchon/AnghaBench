; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_ivb_pipe_crc_ctl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_ivb_pipe_crc_ctl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@INTEL_PIPE_CRC_SOURCE_AUTO = common dso_local global i32 0, align 4
@PIPE_CRC_ENABLE = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_PRIMARY_IVB = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_SPRITE_IVB = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_PF_IVB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32*, i32*)* @ivb_pipe_crc_ctl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivb_pipe_crc_ctl_reg(%struct.drm_i915_private* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INTEL_PIPE_CRC_SOURCE_AUTO, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  store i32 130, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %36 [
    i32 129, label %19
    i32 128, label %24
    i32 130, label %29
    i32 131, label %34
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %21 = load i32, i32* @PIPE_CRC_SOURCE_PRIMARY_IVB, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  br label %39

24:                                               ; preds = %16
  %25 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %26 = load i32, i32* @PIPE_CRC_SOURCE_SPRITE_IVB, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  br label %39

29:                                               ; preds = %16
  %30 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %31 = load i32, i32* @PIPE_CRC_SOURCE_PF_IVB, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %39

34:                                               ; preds = %16
  %35 = load i32*, i32** %9, align 8
  store i32 0, i32* %35, align 4
  br label %39

36:                                               ; preds = %16
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %34, %29, %24, %19
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
