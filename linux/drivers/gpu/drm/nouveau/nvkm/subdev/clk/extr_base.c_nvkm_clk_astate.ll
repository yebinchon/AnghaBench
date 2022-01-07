; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_astate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_astate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_clk_astate(%struct.nvkm_clk* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %11, %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %18, %15
  %25 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %26 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %29 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = call i32 @min(i32 %27, i64 %31)
  %33 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %34 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %36 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @max(i32 %37, i32 0)
  %39 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %40 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @nvkm_pstate_calc(%struct.nvkm_clk* %41, i32 %42)
  ret i32 %43
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nvkm_pstate_calc(%struct.nvkm_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
