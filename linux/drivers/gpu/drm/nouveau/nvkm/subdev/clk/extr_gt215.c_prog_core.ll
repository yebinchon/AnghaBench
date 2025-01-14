; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_prog_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_prog_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_clk = type { %struct.TYPE_4__, %struct.gt215_clk_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gt215_clk_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gt215_clk*, i32)* @prog_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prog_core(%struct.gt215_clk* %0, i32 %1) #0 {
  %3 = alloca %struct.gt215_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gt215_clk_info*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i64, align 8
  store %struct.gt215_clk* %0, %struct.gt215_clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %9 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %8, i32 0, i32 1
  %10 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %10, i64 %12
  store %struct.gt215_clk_info* %13, %struct.gt215_clk_info** %5, align 8
  %14 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %15 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %6, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %20 = call i64 @nvkm_rd32(%struct.nvkm_device* %19, i32 1048620)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %5, align 8
  %23 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %28 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %5, align 8
  %29 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 1048620, i64 %30)
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.gt215_clk*, %struct.gt215_clk** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @prog_pll(%struct.gt215_clk* %33, i32 0, i32 16896, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %5, align 8
  %38 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %43 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %5, align 8
  %44 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @nvkm_wr32(%struct.nvkm_device* %42, i32 1048620, i64 %45)
  br label %47

47:                                               ; preds = %41, %32
  ret void
}

declare dso_local i64 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i64) #1

declare dso_local i32 @prog_pll(%struct.gt215_clk*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
