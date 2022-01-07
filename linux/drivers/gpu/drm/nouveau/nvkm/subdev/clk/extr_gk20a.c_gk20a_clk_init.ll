; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)*, %struct.TYPE_4__*, i32 (%struct.nvkm_clk*, i32*)* }
%struct.TYPE_6__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gk20a_clk = type { %struct.TYPE_6__ }

@GPCPLL_CFG = common dso_local global i32 0, align 4
@GPCPLL_CFG_IDDQ = common dso_local global i32 0, align 4
@GPC2CLK_OUT = common dso_local global i32 0, align 4
@GPC2CLK_OUT_INIT_MASK = common dso_local global i32 0, align 4
@GPC2CLK_OUT_INIT_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot initialize clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*)* @gk20a_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_clk_init(%struct.nvkm_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_clk*, align 8
  %4 = alloca %struct.gk20a_clk*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %3, align 8
  %8 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %9 = call %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk* %8)
  store %struct.gk20a_clk* %9, %struct.gk20a_clk** %4, align 8
  %10 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %11 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %5, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %6, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %17 = load i32, i32* @GPCPLL_CFG, align 4
  %18 = load i32, i32* @GPCPLL_CFG_IDDQ, align 4
  %19 = call i32 @nvkm_mask(%struct.nvkm_device* %16, i32 %17, i32 %18, i32 0)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %21 = load i32, i32* @GPCPLL_CFG, align 4
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %21)
  %23 = call i32 @udelay(i32 5)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %25 = load i32, i32* @GPC2CLK_OUT, align 4
  %26 = load i32, i32* @GPC2CLK_OUT_INIT_MASK, align 4
  %27 = load i32, i32* @GPC2CLK_OUT_INIT_VAL, align 4
  %28 = call i32 @nvkm_mask(%struct.nvkm_device* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %30 = call i32 @gk20a_clk_setup_slide(%struct.gk20a_clk* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %65

35:                                               ; preds = %1
  %36 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32 (%struct.nvkm_clk*, i32*)*, i32 (%struct.nvkm_clk*, i32*)** %39, align 8
  %41 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %42 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %43 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 %40(%struct.nvkm_clk* %41, i32* %48)
  %50 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %51 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %53, align 8
  %55 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %56 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %55, i32 0, i32 0
  %57 = call i32 %54(%struct.TYPE_6__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %35
  %61 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %62 = call i32 @nvkm_error(%struct.nvkm_subdev* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %60, %33
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gk20a_clk_setup_slide(%struct.gk20a_clk*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
