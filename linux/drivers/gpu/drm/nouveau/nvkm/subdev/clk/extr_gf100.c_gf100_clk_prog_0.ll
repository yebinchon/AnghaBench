; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_gf100_clk_prog_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_gf100_clk_prog_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_clk = type { %struct.TYPE_4__, %struct.gf100_clk_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gf100_clk_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_clk*, i32)* @gf100_clk_prog_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_clk_prog_0(%struct.gf100_clk* %0, i32 %1) #0 {
  %3 = alloca %struct.gf100_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gf100_clk_info*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  store %struct.gf100_clk* %0, %struct.gf100_clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gf100_clk*, %struct.gf100_clk** %3, align 8
  %8 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %7, i32 0, i32 1
  %9 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %9, i64 %11
  store %struct.gf100_clk_info* %12, %struct.gf100_clk_info** %5, align 8
  %13 = load %struct.gf100_clk*, %struct.gf100_clk** %3, align 8
  %14 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 7
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %5, align 8
  %22 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %20
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 4
  %29 = add nsw i32 1274320, %28
  %30 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %5, align 8
  %31 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nvkm_mask(%struct.nvkm_device* %26, i32 %29, i32 -2147467457, i32 %32)
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, 4
  %37 = add nsw i32 1274208, %36
  %38 = load %struct.gf100_clk_info*, %struct.gf100_clk_info** %5, align 8
  %39 = getelementptr inbounds %struct.gf100_clk_info, %struct.gf100_clk_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %25, %20, %2
  ret void
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
