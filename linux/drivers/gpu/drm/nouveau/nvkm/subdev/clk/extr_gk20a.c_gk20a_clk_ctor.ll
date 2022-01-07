; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_device_tegra* (%struct.nvkm_device*)* }
%struct.nvkm_device_tegra = type { i32 }
%struct.nvkm_clk_func = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.gk20a_clk_pllg_params = type { i32 }
%struct.gk20a_clk = type { i32, %struct.TYPE_6__, %struct.gk20a_clk_pllg_params* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"parent clock rate: %d Khz\0A\00", align 1
@KHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_clk_ctor(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_clk_func* %2, %struct.gk20a_clk_pllg_params* %3, %struct.gk20a_clk* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_clk_func*, align 8
  %10 = alloca %struct.gk20a_clk_pllg_params*, align 8
  %11 = alloca %struct.gk20a_clk*, align 8
  %12 = alloca %struct.nvkm_device_tegra*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nvkm_clk_func* %2, %struct.nvkm_clk_func** %9, align 8
  store %struct.gk20a_clk_pllg_params* %3, %struct.gk20a_clk_pllg_params** %10, align 8
  store %struct.gk20a_clk* %4, %struct.gk20a_clk** %11, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device_tegra* (%struct.nvkm_device*)*, %struct.nvkm_device_tegra* (%struct.nvkm_device*)** %18, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %21 = call %struct.nvkm_device_tegra* %19(%struct.nvkm_device* %20)
  store %struct.nvkm_device_tegra* %21, %struct.nvkm_device_tegra** %12, align 8
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %46, %5
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %9, align 8
  %25 = getelementptr inbounds %struct.nvkm_clk_func, %struct.nvkm_clk_func* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %9, align 8
  %30 = getelementptr inbounds %struct.nvkm_clk_func, %struct.nvkm_clk_func* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %9, align 8
  %40 = getelementptr inbounds %struct.nvkm_clk_func, %struct.nvkm_clk_func* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load %struct.gk20a_clk_pllg_params*, %struct.gk20a_clk_pllg_params** %10, align 8
  %51 = load %struct.gk20a_clk*, %struct.gk20a_clk** %11, align 8
  %52 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %51, i32 0, i32 2
  store %struct.gk20a_clk_pllg_params* %50, %struct.gk20a_clk_pllg_params** %52, align 8
  %53 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %12, align 8
  %54 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_get_rate(i32 %55)
  %57 = load %struct.gk20a_clk*, %struct.gk20a_clk** %11, align 8
  %58 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %9, align 8
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.gk20a_clk*, %struct.gk20a_clk** %11, align 8
  %63 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %62, i32 0, i32 1
  %64 = call i32 @nvkm_clk_ctor(%struct.nvkm_clk_func* %59, %struct.nvkm_device* %60, i32 %61, i32 1, %struct.TYPE_6__* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %79

69:                                               ; preds = %49
  %70 = load %struct.gk20a_clk*, %struct.gk20a_clk** %11, align 8
  %71 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.gk20a_clk*, %struct.gk20a_clk** %11, align 8
  %74 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @KHZ, align 4
  %77 = sdiv i32 %75, %76
  %78 = call i32 @nvkm_debug(i32* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %77)
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %69, %67
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @nvkm_clk_ctor(%struct.nvkm_clk_func*, %struct.nvkm_device*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
