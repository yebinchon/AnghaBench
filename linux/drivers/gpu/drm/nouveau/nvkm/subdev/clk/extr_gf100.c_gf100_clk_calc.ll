; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_gf100_clk_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_gf100_clk_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.nvkm_cstate = type { i32 }
%struct.gf100_clk = type { i32 }

@nv_clk_src_gpc = common dso_local global i32 0, align 4
@nv_clk_src_rop = common dso_local global i32 0, align 4
@nv_clk_src_hubk07 = common dso_local global i32 0, align 4
@nv_clk_src_hubk06 = common dso_local global i32 0, align 4
@nv_clk_src_hubk01 = common dso_local global i32 0, align 4
@nv_clk_src_copy = common dso_local global i32 0, align 4
@nv_clk_src_pmu = common dso_local global i32 0, align 4
@nv_clk_src_vdec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, %struct.nvkm_cstate*)* @gf100_clk_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_clk_calc(%struct.nvkm_clk* %0, %struct.nvkm_cstate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca %struct.nvkm_cstate*, align 8
  %6 = alloca %struct.gf100_clk*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store %struct.nvkm_cstate* %1, %struct.nvkm_cstate** %5, align 8
  %8 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %9 = call %struct.gf100_clk* @gf100_clk(%struct.nvkm_clk* %8)
  store %struct.gf100_clk* %9, %struct.gf100_clk** %6, align 8
  %10 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %11 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %12 = load i32, i32* @nv_clk_src_gpc, align 4
  %13 = call i32 @calc_clk(%struct.gf100_clk* %10, %struct.nvkm_cstate* %11, i32 0, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %2
  %16 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %17 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %18 = load i32, i32* @nv_clk_src_rop, align 4
  %19 = call i32 @calc_clk(%struct.gf100_clk* %16, %struct.nvkm_cstate* %17, i32 1, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %15
  %22 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %23 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %24 = load i32, i32* @nv_clk_src_hubk07, align 4
  %25 = call i32 @calc_clk(%struct.gf100_clk* %22, %struct.nvkm_cstate* %23, i32 2, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %21
  %28 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %29 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %30 = load i32, i32* @nv_clk_src_hubk06, align 4
  %31 = call i32 @calc_clk(%struct.gf100_clk* %28, %struct.nvkm_cstate* %29, i32 7, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %27
  %34 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %35 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %36 = load i32, i32* @nv_clk_src_hubk01, align 4
  %37 = call i32 @calc_clk(%struct.gf100_clk* %34, %struct.nvkm_cstate* %35, i32 8, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %41 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %42 = load i32, i32* @nv_clk_src_copy, align 4
  %43 = call i32 @calc_clk(%struct.gf100_clk* %40, %struct.nvkm_cstate* %41, i32 9, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %47 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %48 = load i32, i32* @nv_clk_src_pmu, align 4
  %49 = call i32 @calc_clk(%struct.gf100_clk* %46, %struct.nvkm_cstate* %47, i32 12, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %53 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %54 = load i32, i32* @nv_clk_src_vdec, align 4
  %55 = call i32 @calc_clk(%struct.gf100_clk* %52, %struct.nvkm_cstate* %53, i32 14, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %45, %39, %33, %27, %21, %15, %2
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.gf100_clk* @gf100_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @calc_clk(%struct.gf100_clk*, %struct.nvkm_cstate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
