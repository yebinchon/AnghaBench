; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_calc_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_calc_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_clk = type { i32, %struct.gt215_clk_info* }
%struct.gt215_clk_info = type { i32, i64 }
%struct.nvkm_cstate = type { i32* }

@nv_clk_src_host = common dso_local global i64 0, align 8
@NVA3_HOST_277 = common dso_local global i32 0, align 4
@NVA3_HOST_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gt215_clk*, %struct.nvkm_cstate*)* @calc_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_host(%struct.gt215_clk* %0, %struct.nvkm_cstate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gt215_clk*, align 8
  %5 = alloca %struct.nvkm_cstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gt215_clk_info*, align 8
  store %struct.gt215_clk* %0, %struct.gt215_clk** %4, align 8
  store %struct.nvkm_cstate* %1, %struct.nvkm_cstate** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @nv_clk_src_host, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.gt215_clk*, %struct.gt215_clk** %4, align 8
  %16 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %15, i32 0, i32 1
  %17 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %16, align 8
  %18 = load i64, i64* @nv_clk_src_host, align 8
  %19 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %17, i64 %18
  store %struct.gt215_clk_info* %19, %struct.gt215_clk_info** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 277000
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %8, align 8
  %24 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @NVA3_HOST_277, align 4
  %26 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %8, align 8
  %27 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load i32, i32* @NVA3_HOST_CLK, align 4
  %30 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %8, align 8
  %31 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.gt215_clk*, %struct.gt215_clk** %4, align 8
  %33 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %8, align 8
  %36 = call i32 @gt215_clk_info(i32* %33, i32 29, i32 %34, %struct.gt215_clk_info* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %39, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @gt215_clk_info(i32*, i32, i32, %struct.gt215_clk_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
