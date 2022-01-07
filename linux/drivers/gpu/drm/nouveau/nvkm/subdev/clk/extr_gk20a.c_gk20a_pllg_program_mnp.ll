; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_program_mnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_program_mnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk20a_pll = type { i32 }

@GPC2CLK_OUT = common dso_local global i32 0, align 4
@GPC2CLK_OUT_VCODIV_MASK = common dso_local global i32 0, align 4
@GPC2CLK_OUT_VCODIV2 = common dso_local global i32 0, align 4
@GPC2CLK_OUT_VCODIV_SHIFT = common dso_local global i32 0, align 4
@GPC2CLK_OUT_VCODIV1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk20a_clk*, %struct.gk20a_pll*)* @gk20a_pllg_program_mnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_pllg_program_mnp(%struct.gk20a_clk* %0, %struct.gk20a_pll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gk20a_clk*, align 8
  %5 = alloca %struct.gk20a_pll*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.gk20a_pll, align 4
  %9 = alloca i32, align 4
  store %struct.gk20a_clk* %0, %struct.gk20a_clk** %4, align 8
  store %struct.gk20a_pll* %1, %struct.gk20a_pll** %5, align 8
  %10 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %11 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %6, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %7, align 8
  %16 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %17 = call i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk* %16, %struct.gk20a_pll* %8)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %19 = load i32, i32* @GPC2CLK_OUT, align 4
  %20 = load i32, i32* @GPC2CLK_OUT_VCODIV_MASK, align 4
  %21 = load i32, i32* @GPC2CLK_OUT_VCODIV2, align 4
  %22 = load i32, i32* @GPC2CLK_OUT_VCODIV_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = call i32 @nvkm_mask(%struct.nvkm_device* %18, i32 %19, i32 %20, i32 %23)
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %26 = load i32, i32* @GPC2CLK_OUT, align 4
  %27 = load i32, i32* @GPC2CLK_OUT_VCODIV_MASK, align 4
  %28 = load i32, i32* @GPC2CLK_OUT_VCODIV2, align 4
  %29 = load i32, i32* @GPC2CLK_OUT_VCODIV_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = call i32 @nvkm_mask(%struct.nvkm_device* %25, i32 %26, i32 %27, i32 %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %33 = load i32, i32* @GPC2CLK_OUT, align 4
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %32, i32 %33)
  %35 = call i32 @udelay(i32 2)
  %36 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %37 = call i32 @gk20a_pllg_disable(%struct.gk20a_clk* %36)
  %38 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %39 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %40 = call i32 @gk20a_pllg_write_mnp(%struct.gk20a_clk* %38, %struct.gk20a_pll* %39)
  %41 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %42 = call i32 @gk20a_pllg_enable(%struct.gk20a_clk* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %66

47:                                               ; preds = %2
  %48 = call i32 @udelay(i32 2)
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %50 = load i32, i32* @GPC2CLK_OUT, align 4
  %51 = load i32, i32* @GPC2CLK_OUT_VCODIV_MASK, align 4
  %52 = load i32, i32* @GPC2CLK_OUT_VCODIV1, align 4
  %53 = load i32, i32* @GPC2CLK_OUT_VCODIV_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = call i32 @nvkm_mask(%struct.nvkm_device* %49, i32 %50, i32 %51, i32 %54)
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %57 = load i32, i32* @GPC2CLK_OUT, align 4
  %58 = load i32, i32* @GPC2CLK_OUT_VCODIV_MASK, align 4
  %59 = load i32, i32* @GPC2CLK_OUT_VCODIV1, align 4
  %60 = load i32, i32* @GPC2CLK_OUT_VCODIV_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = call i32 @nvkm_mask(%struct.nvkm_device* %56, i32 %57, i32 %58, i32 %61)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %64 = load i32, i32* @GPC2CLK_OUT, align 4
  %65 = call i32 @nvkm_rd32(%struct.nvkm_device* %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %47, %45
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gk20a_pllg_disable(%struct.gk20a_clk*) #1

declare dso_local i32 @gk20a_pllg_write_mnp(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @gk20a_pllg_enable(%struct.gk20a_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
