; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.gm20b_clk = type { i64, i64, i64, %struct.TYPE_3__, %struct.gk20a_pll, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.gk20a_pll, i32 }
%struct.gk20a_pll = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@nv_clk_src_gpc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*)* @gm20b_clk_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm20b_clk_prog(%struct.nvkm_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_clk*, align 8
  %4 = alloca %struct.gm20b_clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gk20a_pll, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %3, align 8
  %8 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %9 = call %struct.gm20b_clk* @gm20b_clk(%struct.nvkm_clk* %8)
  store %struct.gm20b_clk* %9, %struct.gm20b_clk** %4, align 8
  %10 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %11 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %14 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %77

18:                                               ; preds = %1
  %19 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %20 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* @nv_clk_src_gpc, align 4
  %23 = call i64 @nvkm_clk_read(i32* %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %26 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %18
  %30 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %31 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %34 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %39 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = bitcast %struct.gk20a_pll* %7 to i8*
  %42 = bitcast %struct.gk20a_pll* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 8 %42, i64 4, i1 false)
  br label %48

43:                                               ; preds = %29
  %44 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %45 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %44, i32 0, i32 4
  %46 = bitcast %struct.gk20a_pll* %7 to i8*
  %47 = bitcast %struct.gk20a_pll* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 8 %47, i64 4, i1 false)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %50 = call i32 @gm20b_dvfs_calc_safe_pll(%struct.gm20b_clk* %49, %struct.gk20a_pll* %7)
  %51 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %52 = call i32 @gm20b_pllg_program_mnp_slide(%struct.gm20b_clk* %51, %struct.gk20a_pll* %7)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %101

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %18
  %59 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %60 = call i32 @gm20b_dvfs_program_coeff(%struct.gm20b_clk* %59, i32 0)
  %61 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %62 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %63 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gm20b_dvfs_program_ext_cal(%struct.gm20b_clk* %61, i32 %65)
  %67 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %68 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %69 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @gm20b_dvfs_program_coeff(%struct.gm20b_clk* %67, i32 %71)
  %73 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %74 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %75 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %74, i32 0, i32 5
  %76 = call i32 @gm20b_dvfs_program_dfs_detection(%struct.gm20b_clk* %73, %struct.TYPE_4__* %75)
  br label %77

77:                                               ; preds = %58, %17
  %78 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %79 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %82 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %84 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %83, i32 0, i32 6
  %85 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %86 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %85, i32 0, i32 5
  %87 = bitcast %struct.TYPE_4__* %84 to i8*
  %88 = bitcast %struct.TYPE_4__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 8, i1 false)
  %89 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %90 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %93 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %92, i32 0, i32 4
  %94 = bitcast %struct.gk20a_pll* %91 to i8*
  %95 = bitcast %struct.gk20a_pll* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 4, i1 false)
  %96 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %97 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %98 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i32 @gm20b_pllg_program_mnp_slide(%struct.gm20b_clk* %96, %struct.gk20a_pll* %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %77, %55
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.gm20b_clk* @gm20b_clk(%struct.nvkm_clk*) #1

declare dso_local i64 @nvkm_clk_read(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gm20b_dvfs_calc_safe_pll(%struct.gm20b_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @gm20b_pllg_program_mnp_slide(%struct.gm20b_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @gm20b_dvfs_program_coeff(%struct.gm20b_clk*, i32) #1

declare dso_local i32 @gm20b_dvfs_program_ext_cal(%struct.gm20b_clk*, i32) #1

declare dso_local i32 @gm20b_dvfs_program_dfs_detection(%struct.gm20b_clk*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
