; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.gk20a_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk20a_pll = type { i32 }

@GK20A_CLK_GPC_MDIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid clock source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_clk_read(%struct.nvkm_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gk20a_clk*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca %struct.gk20a_pll, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %11 = call %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk* %10)
  store %struct.gk20a_clk* %11, %struct.gk20a_clk** %6, align 8
  %12 = load %struct.gk20a_clk*, %struct.gk20a_clk** %6, align 8
  %13 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %7, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %8, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %30 [
    i32 129, label %19
    i32 128, label %23
  ]

19:                                               ; preds = %2
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.gk20a_clk*, %struct.gk20a_clk** %6, align 8
  %25 = call i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk* %24, %struct.gk20a_pll* %9)
  %26 = load %struct.gk20a_clk*, %struct.gk20a_clk** %6, align 8
  %27 = call i32 @gk20a_pllg_calc_rate(%struct.gk20a_clk* %26, %struct.gk20a_pll* %9)
  %28 = load i32, i32* @GK20A_CLK_GPC_MDIV, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %2
  %31 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nvkm_error(%struct.nvkm_subdev* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %23, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @gk20a_pllg_calc_rate(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
