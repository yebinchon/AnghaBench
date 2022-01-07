; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_dvfs_get_target_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_dvfs_get_target_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_pmu = type { %struct.TYPE_5__, %struct.gk20a_pmu_dvfs_data* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_clk* }
%struct.nvkm_clk = type { i32, i32 }
%struct.gk20a_pmu_dvfs_data = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"cur level = %d, new level = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk20a_pmu*, i32*, i32)* @gk20a_pmu_dvfs_get_target_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_pmu_dvfs_get_target_state(%struct.gk20a_pmu* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gk20a_pmu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gk20a_pmu_dvfs_data*, align 8
  %8 = alloca %struct.nvkm_clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gk20a_pmu* %0, %struct.gk20a_pmu** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %4, align 8
  %12 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %11, i32 0, i32 1
  %13 = load %struct.gk20a_pmu_dvfs_data*, %struct.gk20a_pmu_dvfs_data** %12, align 8
  store %struct.gk20a_pmu_dvfs_data* %13, %struct.gk20a_pmu_dvfs_data** %7, align 8
  %14 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %4, align 8
  %15 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_clk*, %struct.nvkm_clk** %19, align 8
  store %struct.nvkm_clk* %20, %struct.nvkm_clk** %8, align 8
  %21 = load %struct.nvkm_clk*, %struct.nvkm_clk** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.gk20a_pmu_dvfs_data*, %struct.gk20a_pmu_dvfs_data** %7, align 8
  %26 = getelementptr inbounds %struct.gk20a_pmu_dvfs_data, %struct.gk20a_pmu_dvfs_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = load %struct.nvkm_clk*, %struct.nvkm_clk** %8, align 8
  %31 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.nvkm_clk*, %struct.nvkm_clk** %8, align 8
  %36 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 3
  %39 = add nsw i32 %34, %38
  %40 = call i32 @min(i32 %33, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %63

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.gk20a_pmu_dvfs_data*, %struct.gk20a_pmu_dvfs_data** %7, align 8
  %44 = getelementptr inbounds %struct.gk20a_pmu_dvfs_data, %struct.gk20a_pmu_dvfs_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  %47 = mul nsw i32 %46, 10
  %48 = load %struct.gk20a_pmu_dvfs_data*, %struct.gk20a_pmu_dvfs_data** %7, align 8
  %49 = getelementptr inbounds %struct.gk20a_pmu_dvfs_data, %struct.gk20a_pmu_dvfs_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %47, %50
  %52 = sdiv i32 %51, 2
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @max(i32 0, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.nvkm_clk*, %struct.nvkm_clk** %8, align 8
  %58 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @min(i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %41, %29
  %64 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %4, align 8
  %65 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @nvkm_trace(%struct.TYPE_6__* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  ret i32 %75
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nvkm_trace(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
