; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_dstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_dstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_clk_dstate(%struct.nvkm_clk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  br label %13

13:                                               ; preds = %9, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %16, %13
  %23 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @min(i32 %25, i64 %29)
  %31 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %32 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %34 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @max(i32 %35, i32 0)
  %37 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %38 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %40 = call i32 @nvkm_pstate_calc(%struct.nvkm_clk* %39, i32 1)
  ret i32 %40
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
