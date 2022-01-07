; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.nv40_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown clock source %d %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, i32)* @nv40_clk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_clk_read(%struct.nvkm_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv40_clk*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %11 = call %struct.nv40_clk* @nv40_clk(%struct.nvkm_clk* %10)
  store %struct.nv40_clk* %11, %struct.nv40_clk** %6, align 8
  %12 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %13 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %7, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %8, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 49216)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %41 [
    i32 131, label %21
    i32 130, label %25
    i32 132, label %26
    i32 128, label %32
    i32 129, label %38
  ]

21:                                               ; preds = %2
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %2
  store i32 100000, i32* %3, align 4
  br label %49

26:                                               ; preds = %2
  %27 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 3
  %30 = ashr i32 %29, 0
  %31 = call i32 @read_clk(%struct.nv40_clk* %27, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 48
  %36 = ashr i32 %35, 4
  %37 = call i32 @read_clk(%struct.nv40_clk* %33, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %2
  %39 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %40 = call i32 @read_pll_2(%struct.nv40_clk* %39, i32 16416)
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @nvkm_debug(%struct.nvkm_subdev* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %38, %32, %26, %25, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.nv40_clk* @nv40_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @read_clk(%struct.nv40_clk*, i32) #1

declare dso_local i32 @read_pll_2(%struct.nv40_clk*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
