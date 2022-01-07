; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_gk104_clk_prog_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_gk104_clk_prog_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_clk = type { %struct.TYPE_4__, %struct.gk104_clk_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk104_clk_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk104_clk*, i32)* @gk104_clk_prog_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_clk_prog_3(%struct.gk104_clk* %0, i32 %1) #0 {
  %3 = alloca %struct.gk104_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gk104_clk_info*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  store %struct.gk104_clk* %0, %struct.gk104_clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gk104_clk*, %struct.gk104_clk** %3, align 8
  %8 = getelementptr inbounds %struct.gk104_clk, %struct.gk104_clk* %7, i32 0, i32 1
  %9 = load %struct.gk104_clk_info*, %struct.gk104_clk_info** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.gk104_clk_info, %struct.gk104_clk_info* %9, i64 %11
  store %struct.gk104_clk_info* %12, %struct.gk104_clk_info** %5, align 8
  %13 = load %struct.gk104_clk*, %struct.gk104_clk** %3, align 8
  %14 = getelementptr inbounds %struct.gk104_clk, %struct.gk104_clk* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %6, align 8
  %18 = load %struct.gk104_clk_info*, %struct.gk104_clk_info** %5, align 8
  %19 = getelementptr inbounds %struct.gk104_clk_info, %struct.gk104_clk_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 4
  %26 = add nsw i32 1274448, %25
  %27 = load %struct.gk104_clk_info*, %struct.gk104_clk_info** %5, align 8
  %28 = getelementptr inbounds %struct.gk104_clk_info, %struct.gk104_clk_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nvkm_mask(%struct.nvkm_device* %23, i32 %26, i32 16128, i32 %29)
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 1274448, %34
  %36 = load %struct.gk104_clk_info*, %struct.gk104_clk_info** %5, align 8
  %37 = getelementptr inbounds %struct.gk104_clk_info, %struct.gk104_clk_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @nvkm_mask(%struct.nvkm_device* %32, i32 %35, i32 63, i32 %38)
  br label %40

40:                                               ; preds = %31, %22
  ret void
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
