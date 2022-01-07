; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_read_vco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_read_vco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gt215_clk*, i32)* @read_vco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_vco(%struct.gt215_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gt215_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.gt215_clk* %0, %struct.gt215_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gt215_clk*, %struct.gt215_clk** %4, align 8
  %9 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %6, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 4
  %16 = add nsw i32 16672, %15
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 48
  switch i32 %19, label %30 [
    i32 0, label %20
    i32 32, label %24
    i32 48, label %27
  ]

20:                                               ; preds = %2
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %22 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.gt215_clk*, %struct.gt215_clk** %4, align 8
  %26 = call i32 @read_pll(%struct.gt215_clk* %25, i32 65, i32 59424)
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.gt215_clk*, %struct.gt215_clk** %4, align 8
  %29 = call i32 @read_pll(%struct.gt215_clk* %28, i32 66, i32 59552)
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27, %24, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @read_pll(%struct.gt215_clk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
