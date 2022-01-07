; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_ilk_pipe_crc_ctl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_ilk_pipe_crc_ctl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEL_PIPE_CRC_SOURCE_AUTO = common dso_local global i32 0, align 4
@PIPE_CRC_ENABLE = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_PRIMARY_ILK = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_SPRITE_ILK = common dso_local global i32 0, align 4
@PIPE_CRC_SOURCE_PIPE_ILK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ilk_pipe_crc_ctl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_pipe_crc_ctl_reg(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @INTEL_PIPE_CRC_SOURCE_AUTO, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  store i32 130, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %32 [
    i32 129, label %15
    i32 128, label %20
    i32 130, label %25
    i32 131, label %30
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %17 = load i32, i32* @PIPE_CRC_SOURCE_PRIMARY_ILK, align 4
  %18 = or i32 %16, %17
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %35

20:                                               ; preds = %12
  %21 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %22 = load i32, i32* @PIPE_CRC_SOURCE_SPRITE_ILK, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %35

25:                                               ; preds = %12
  %26 = load i32, i32* @PIPE_CRC_ENABLE, align 4
  %27 = load i32, i32* @PIPE_CRC_SOURCE_PIPE_ILK, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %35

30:                                               ; preds = %12
  %31 = load i32*, i32** %5, align 8
  store i32 0, i32* %31, align 4
  br label %35

32:                                               ; preds = %12
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %30, %25, %20, %15
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
