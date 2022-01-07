; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.gt215_clk = type { i32, %struct.gt215_clk_info* }
%struct.gt215_clk_info = type { i64 }

@nv_clk_src_core = common dso_local global i64 0, align 8
@nv_clk_src_core_intm = common dso_local global i64 0, align 8
@nv_clk_src_shader = common dso_local global i32 0, align 4
@nv_clk_src_disp = common dso_local global i32 0, align 4
@nv_clk_src_vdec = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*)* @gt215_clk_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt215_clk_prog(%struct.nvkm_clk* %0) #0 {
  %2 = alloca %struct.nvkm_clk*, align 8
  %3 = alloca %struct.gt215_clk*, align 8
  %4 = alloca %struct.gt215_clk_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %2, align 8
  %8 = load %struct.nvkm_clk*, %struct.nvkm_clk** %2, align 8
  %9 = call %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk* %8)
  store %struct.gt215_clk* %9, %struct.gt215_clk** %3, align 8
  %10 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %11 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %10, i32 0, i32 1
  %12 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %11, align 8
  %13 = load i64, i64* @nv_clk_src_core, align 8
  %14 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %12, i64 %13
  store %struct.gt215_clk_info* %14, %struct.gt215_clk_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i64* %6, i64** %7, align 8
  %15 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %16 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %15, i32 0, i32 0
  %17 = load i64*, i64** %7, align 8
  %18 = call i32 @gt215_clk_pre(i32* %16, i64* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %4, align 8
  %24 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %29 = load i64, i64* @nv_clk_src_core_intm, align 8
  %30 = call i32 @prog_core(%struct.gt215_clk* %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %33 = load i64, i64* @nv_clk_src_core, align 8
  %34 = call i32 @prog_core(%struct.gt215_clk* %32, i64 %33)
  %35 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %36 = load i32, i32* @nv_clk_src_shader, align 4
  %37 = call i32 @prog_pll(%struct.gt215_clk* %35, i32 1, i32 16928, i32 %36)
  %38 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %39 = load i32, i32* @nv_clk_src_disp, align 4
  %40 = call i32 @prog_clk(%struct.gt215_clk* %38, i32 32, i32 %39)
  %41 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %42 = load i32, i32* @nv_clk_src_vdec, align 4
  %43 = call i32 @prog_clk(%struct.gt215_clk* %41, i32 33, i32 %42)
  %44 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %45 = call i32 @prog_host(%struct.gt215_clk* %44)
  br label %46

46:                                               ; preds = %31, %21
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i64* null, i64** %7, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %54 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %53, i32 0, i32 0
  %55 = load i64*, i64** %7, align 8
  %56 = call i32 @gt215_clk_post(i32* %54, i64* %55)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @gt215_clk_pre(i32*, i64*) #1

declare dso_local i32 @prog_core(%struct.gt215_clk*, i64) #1

declare dso_local i32 @prog_pll(%struct.gt215_clk*, i32, i32, i32) #1

declare dso_local i32 @prog_clk(%struct.gt215_clk*, i32, i32) #1

declare dso_local i32 @prog_host(%struct.gt215_clk*) #1

declare dso_local i32 @gt215_clk_post(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
