; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_dvfs_calc_safe_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_dvfs_calc_safe_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm20b_clk = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gk20a_pll = type { i32, i32, i8* }

@KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gm20b_clk*, %struct.gk20a_pll*)* @gm20b_dvfs_calc_safe_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm20b_dvfs_calc_safe_pll(%struct.gm20b_clk* %0, %struct.gk20a_pll* %1) #0 {
  %3 = alloca %struct.gm20b_clk*, align 8
  %4 = alloca %struct.gk20a_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gm20b_clk* %0, %struct.gm20b_clk** %3, align 8
  store %struct.gk20a_pll* %1, %struct.gk20a_pll** %4, align 8
  %9 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %10 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %9, i32 0, i32 1
  %11 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %12 = call i32 @gk20a_pllg_calc_rate(%struct.TYPE_4__* %10, %struct.gk20a_pll* %11)
  %13 = load i32, i32* @KHZ, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %16 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @KHZ, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %23 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 90
  %29 = sdiv i32 %28, 100
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %5, align 4
  %33 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %34 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %37 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %35, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @DIV_ROUND_UP(i32 %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %47 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %52 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %50, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %30
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %64 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = mul nsw i32 %65, %66
  %68 = call i8* @DIV_ROUND_UP(i32 %62, i32 %67)
  %69 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %70 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %59, %30
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %75 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  ret void
}

declare dso_local i32 @gk20a_pllg_calc_rate(%struct.TYPE_4__*, %struct.gk20a_pll*) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
