; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_clk = type { i32 }
%struct.gk20a_clk = type { i32, i32, %struct.nvkm_clk }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gk20a_clk = common dso_local global i32 0, align 4
@gk20a_pllg_params = common dso_local global i32 0, align 4
@pl_to_div = common dso_local global i32 0, align 4
@div_to_pl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_clk_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_clk** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_clk**, align 8
  %8 = alloca %struct.gk20a_clk*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_clk** %2, %struct.nvkm_clk*** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gk20a_clk* @kzalloc(i32 12, i32 %10)
  store %struct.gk20a_clk* %11, %struct.gk20a_clk** %8, align 8
  %12 = load %struct.gk20a_clk*, %struct.gk20a_clk** %8, align 8
  %13 = icmp ne %struct.gk20a_clk* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %32

17:                                               ; preds = %3
  %18 = load %struct.gk20a_clk*, %struct.gk20a_clk** %8, align 8
  %19 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %18, i32 0, i32 2
  %20 = load %struct.nvkm_clk**, %struct.nvkm_clk*** %7, align 8
  store %struct.nvkm_clk* %19, %struct.nvkm_clk** %20, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.gk20a_clk*, %struct.gk20a_clk** %8, align 8
  %24 = call i32 @gk20a_clk_ctor(%struct.nvkm_device* %21, i32 %22, i32* @gk20a_clk, i32* @gk20a_pllg_params, %struct.gk20a_clk* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @pl_to_div, align 4
  %26 = load %struct.gk20a_clk*, %struct.gk20a_clk** %8, align 8
  %27 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @div_to_pl, align 4
  %29 = load %struct.gk20a_clk*, %struct.gk20a_clk** %8, align 8
  %30 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %17, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.gk20a_clk* @kzalloc(i32, i32) #1

declare dso_local i32 @gk20a_clk_ctor(%struct.nvkm_device*, i32, i32*, i32*, %struct.gk20a_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
