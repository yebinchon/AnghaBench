; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_enable_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_enable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_context = type { i32 }

@SCALER_INT_EN_TIMEOUT = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_BLEND = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_RATIO = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_HEIGHT = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_WIDTH = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_V_POS = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_H_POS = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_C_SPAN = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_Y_SPAN = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_CR_BASE = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_CB_BASE = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_Y_BASE = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_COLOR = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_HEIGHT = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_WIDTH = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_CV_POS = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_CH_POS = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_YV_POS = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_YH_POS = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_DST_SPAN = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_Y_SPAN = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_CR_BASE = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_CB_BASE = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_Y_BASE = common dso_local global i32 0, align 4
@SCALER_INT_EN_ILLEGAL_SRC_COLOR = common dso_local global i32 0, align 4
@SCALER_INT_EN_FRAME_END = common dso_local global i32 0, align 4
@SCALER_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scaler_context*)* @scaler_enable_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scaler_enable_int(%struct.scaler_context* %0) #0 {
  %2 = alloca %struct.scaler_context*, align 8
  %3 = alloca i32, align 4
  store %struct.scaler_context* %0, %struct.scaler_context** %2, align 8
  %4 = load i32, i32* @SCALER_INT_EN_TIMEOUT, align 4
  %5 = load i32, i32* @SCALER_INT_EN_ILLEGAL_BLEND, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @SCALER_INT_EN_ILLEGAL_RATIO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_HEIGHT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_WIDTH, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_V_POS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_H_POS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_C_SPAN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_Y_SPAN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_CR_BASE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_CB_BASE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_Y_BASE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_COLOR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_HEIGHT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_WIDTH, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_CV_POS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_CH_POS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_YV_POS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_YH_POS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SCALER_INT_EN_ILLEGAL_DST_SPAN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_Y_SPAN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_CR_BASE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_CB_BASE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_Y_BASE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SCALER_INT_EN_ILLEGAL_SRC_COLOR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SCALER_INT_EN_FRAME_END, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SCALER_INT_EN, align 4
  %57 = call i32 @scaler_write(i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @scaler_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
