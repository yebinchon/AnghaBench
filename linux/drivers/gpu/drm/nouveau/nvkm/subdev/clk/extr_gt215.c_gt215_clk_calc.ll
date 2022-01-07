; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.nvkm_cstate = type { i32* }
%struct.gt215_clk = type { %struct.gt215_clk_info*, i32 }
%struct.gt215_clk_info = type { i64 }

@nv_clk_src_core = common dso_local global i64 0, align 8
@nv_clk_src_shader = common dso_local global i64 0, align 8
@nv_clk_src_disp = common dso_local global i64 0, align 8
@nv_clk_src_vdec = common dso_local global i64 0, align 8
@nv_clk_src_core_intm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, %struct.nvkm_cstate*)* @gt215_clk_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt215_clk_calc(%struct.nvkm_clk* %0, %struct.nvkm_cstate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca %struct.nvkm_cstate*, align 8
  %6 = alloca %struct.gt215_clk*, align 8
  %7 = alloca %struct.gt215_clk_info*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store %struct.nvkm_cstate* %1, %struct.nvkm_cstate** %5, align 8
  %9 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %10 = call %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk* %9)
  store %struct.gt215_clk* %10, %struct.gt215_clk** %6, align 8
  %11 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %12 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %11, i32 0, i32 0
  %13 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %12, align 8
  %14 = load i64, i64* @nv_clk_src_core, align 8
  %15 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %13, i64 %14
  store %struct.gt215_clk_info* %15, %struct.gt215_clk_info** %7, align 8
  %16 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %17 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %18 = load i64, i64* @nv_clk_src_core, align 8
  %19 = call i32 @calc_clk(%struct.gt215_clk* %16, %struct.nvkm_cstate* %17, i32 16, i32 16896, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %2
  %22 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %23 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %24 = load i64, i64* @nv_clk_src_shader, align 8
  %25 = call i32 @calc_clk(%struct.gt215_clk* %22, %struct.nvkm_cstate* %23, i32 17, i32 16928, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %21
  %28 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %29 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %30 = load i64, i64* @nv_clk_src_disp, align 8
  %31 = call i32 @calc_clk(%struct.gt215_clk* %28, %struct.nvkm_cstate* %29, i32 32, i32 0, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %35 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %36 = load i64, i64* @nv_clk_src_vdec, align 8
  %37 = call i32 @calc_clk(%struct.gt215_clk* %34, %struct.nvkm_cstate* %35, i32 33, i32 0, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %41 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %42 = call i32 @calc_host(%struct.gt215_clk* %40, %struct.nvkm_cstate* %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %33, %27, %21, %2
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %72

46:                                               ; preds = %39
  %47 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %7, align 8
  %48 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %53 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %52, i32 0, i32 1
  %54 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %55 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @nv_clk_src_core_intm, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %61 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %60, i32 0, i32 0
  %62 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %61, align 8
  %63 = load i64, i64* @nv_clk_src_core_intm, align 8
  %64 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %62, i64 %63
  %65 = call i32 @gt215_clk_info(i32* %53, i32 16, i32 %59, %struct.gt215_clk_info* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %46
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %44
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @calc_clk(%struct.gt215_clk*, %struct.nvkm_cstate*, i32, i32, i64) #1

declare dso_local i32 @calc_host(%struct.gt215_clk*, %struct.nvkm_cstate*) #1

declare dso_local i32 @gt215_clk_info(i32*, i32, i32, %struct.gt215_clk_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
