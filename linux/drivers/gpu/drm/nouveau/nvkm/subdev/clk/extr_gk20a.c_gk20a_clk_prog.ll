; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.gk20a_clk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_clk_prog(%struct.nvkm_clk* %0) #0 {
  %2 = alloca %struct.nvkm_clk*, align 8
  %3 = alloca %struct.gk20a_clk*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %2, align 8
  %5 = load %struct.nvkm_clk*, %struct.nvkm_clk** %2, align 8
  %6 = call %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk* %5)
  store %struct.gk20a_clk* %6, %struct.gk20a_clk** %3, align 8
  %7 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %8 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %9 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %8, i32 0, i32 0
  %10 = call i32 @gk20a_pllg_program_mnp_slide(%struct.gk20a_clk* %7, i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %15 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %16 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %15, i32 0, i32 0
  %17 = call i32 @gk20a_pllg_program_mnp(%struct.gk20a_clk* %14, i32* %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @gk20a_pllg_program_mnp_slide(%struct.gk20a_clk*, i32*) #1

declare dso_local i32 @gk20a_pllg_program_mnp(%struct.gk20a_clk*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
