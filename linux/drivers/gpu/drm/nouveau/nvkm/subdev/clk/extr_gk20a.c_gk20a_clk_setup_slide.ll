; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_setup_slide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_setup_slide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_clk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"invalid parent clock rate %u KHz\00", align 1
@KHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GPCPLL_CFG2 = common dso_local global i32 0, align 4
@GPCPLL_CFG2_PLL_STEPA_SHIFT = common dso_local global i32 0, align 4
@GPCPLL_CFG3 = common dso_local global i32 0, align 4
@GPCPLL_CFG3_PLL_STEPB_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_clk_setup_slide(%struct.gk20a_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gk20a_clk*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gk20a_clk* %0, %struct.gk20a_clk** %3, align 8
  %8 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %9 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %4, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %5, align 8
  %14 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %15 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %20 [
    i32 12000000, label %17
    i32 12800000, label %17
    i32 13000000, label %17
    i32 19200000, label %18
    i32 38400000, label %19
  ]

17:                                               ; preds = %1, %1, %1
  store i32 43, i32* %6, align 4
  store i32 11, i32* %7, align 4
  br label %30

18:                                               ; preds = %1
  store i32 18, i32* %6, align 4
  store i32 8, i32* %7, align 4
  br label %30

19:                                               ; preds = %1
  store i32 4, i32* %6, align 4
  store i32 5, i32* %7, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %22 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %23 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @KHZ, align 4
  %26 = sdiv i32 %24, %25
  %27 = call i32 @nvkm_error(%struct.nvkm_subdev* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %47

30:                                               ; preds = %19, %18, %17
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = load i32, i32* @GPCPLL_CFG2, align 4
  %33 = load i32, i32* @GPCPLL_CFG2_PLL_STEPA_SHIFT, align 4
  %34 = shl i32 255, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @GPCPLL_CFG2_PLL_STEPA_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 @nvkm_mask(%struct.nvkm_device* %31, i32 %32, i32 %34, i32 %37)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = load i32, i32* @GPCPLL_CFG3, align 4
  %41 = load i32, i32* @GPCPLL_CFG3_PLL_STEPB_SHIFT, align 4
  %42 = shl i32 255, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GPCPLL_CFG3_PLL_STEPB_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = call i32 @nvkm_mask(%struct.nvkm_device* %39, i32 %40, i32 %42, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %30, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
