; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}*, %struct.TYPE_5__*, i32 (%struct.nvkm_clk*, i32*)* }
%struct.TYPE_5__ = type { i32 }
%struct.gk20a_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.gm20b_clk* (%struct.nvkm_clk*)*, %struct.nvkm_subdev }
%struct.gm20b_clk = type { i32 }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_volt* }
%struct.nvkm_volt = type { i32 }

@GPCPLL_CFG = common dso_local global i32 0, align 4
@GPCPLL_CFG_IDDQ = common dso_local global i32 0, align 4
@GPC2CLK_OUT = common dso_local global i32 0, align 4
@GPC2CLK_OUT_INIT_MASK = common dso_local global i32 0, align 4
@GPC2CLK_OUT_INIT_VAL = common dso_local global i32 0, align 4
@BYPASSCTRL_SYS = common dso_local global i32 0, align 4
@BYPASSCTRL_SYS_GPCPLL_WIDTH = common dso_local global i32 0, align 4
@BYPASSCTRL_SYS_GPCPLL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot initialize clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*)* @gm20b_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm20b_clk_init(%struct.nvkm_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_clk*, align 8
  %4 = alloca %struct.gk20a_clk*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gm20b_clk*, align 8
  %10 = alloca %struct.nvkm_volt*, align 8
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %3, align 8
  %11 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %12 = call %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk* %11)
  store %struct.gk20a_clk* %12, %struct.gk20a_clk** %4, align 8
  %13 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %14 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %5, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %6, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %20 = load i32, i32* @GPCPLL_CFG, align 4
  %21 = load i32, i32* @GPCPLL_CFG_IDDQ, align 4
  %22 = call i32 @nvkm_mask(%struct.nvkm_device* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = load i32, i32* @GPCPLL_CFG, align 4
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 %24)
  %26 = call i32 @udelay(i32 5)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %28 = load i32, i32* @GPC2CLK_OUT, align 4
  %29 = load i32, i32* @GPC2CLK_OUT_INIT_MASK, align 4
  %30 = load i32, i32* @GPC2CLK_OUT_INIT_VAL, align 4
  %31 = call i32 @nvkm_mask(%struct.nvkm_device* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %33 = load i32, i32* @BYPASSCTRL_SYS, align 4
  %34 = load i32, i32* @BYPASSCTRL_SYS_GPCPLL_WIDTH, align 4
  %35 = call i32 @MASK(i32 %34)
  %36 = load i32, i32* @BYPASSCTRL_SYS_GPCPLL_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 @nvkm_mask(%struct.nvkm_device* %32, i32 %33, i32 %37, i32 0)
  %39 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %40 = call i32 @gk20a_clk_setup_slide(%struct.gk20a_clk* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %119

45:                                               ; preds = %1
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %47 = call i32 @nvkm_rd32(%struct.nvkm_device* %46, i32 137540)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 3
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, 2
  store i32 %53, i32* %8, align 4
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @nvkm_wr32(%struct.nvkm_device* %54, i32 137540, i32 %55)
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %58 = call i32 @nvkm_rd32(%struct.nvkm_device* %57, i32 137544)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @nvkm_wr32(%struct.nvkm_device* %61, i32 137544, i32 %62)
  br label %64

64:                                               ; preds = %51, %45
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %66 = call i32 @nvkm_mask(%struct.nvkm_device* %65, i32 131424, i32 4128768, i32 0)
  %67 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %68 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.gm20b_clk* (%struct.nvkm_clk*)*, %struct.gm20b_clk* (%struct.nvkm_clk*)** %69, align 8
  %71 = icmp eq %struct.gm20b_clk* (%struct.nvkm_clk*)* %70, @gm20b_clk
  br i1 %71, label %72, label %89

72:                                               ; preds = %64
  %73 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %74 = call %struct.gm20b_clk* @gm20b_clk(%struct.nvkm_clk* %73)
  store %struct.gm20b_clk* %74, %struct.gm20b_clk** %9, align 8
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %76 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %75, i32 0, i32 0
  %77 = load %struct.nvkm_volt*, %struct.nvkm_volt** %76, align 8
  store %struct.nvkm_volt* %77, %struct.nvkm_volt** %10, align 8
  %78 = load %struct.nvkm_volt*, %struct.nvkm_volt** %10, align 8
  %79 = call i32 @nvkm_volt_get(%struct.nvkm_volt* %78)
  %80 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %81 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.gm20b_clk*, %struct.gm20b_clk** %9, align 8
  %83 = call i32 @gm20b_clk_init_dvfs(%struct.gm20b_clk* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %72
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %119

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %64
  %90 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %91 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32 (%struct.nvkm_clk*, i32*)*, i32 (%struct.nvkm_clk*, i32*)** %93, align 8
  %95 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %96 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %97 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = call i32 %94(%struct.nvkm_clk* %95, i32* %102)
  %104 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %105 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = bitcast {}** %107 to i32 (%struct.nvkm_clk*)**
  %109 = load i32 (%struct.nvkm_clk*)*, i32 (%struct.nvkm_clk*)** %108, align 8
  %110 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %111 = call i32 %109(%struct.nvkm_clk* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %89
  %115 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %116 = call i32 @nvkm_error(%struct.nvkm_subdev* %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %119

118:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %114, %86, %43
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @MASK(i32) #1

declare dso_local i32 @gk20a_clk_setup_slide(%struct.gk20a_clk*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local %struct.gm20b_clk* @gm20b_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @nvkm_volt_get(%struct.nvkm_volt*) #1

declare dso_local i32 @gm20b_clk_init_dvfs(%struct.gm20b_clk*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
