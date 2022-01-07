; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_read_pll_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_read_pll_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@nv_clk_src_crystal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bad pll %06x\0A\00", align 1
@nv_clk_src_href = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_clk*, i32)* @read_pll_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll_ref(%struct.nv50_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nv50_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nv50_clk* %0, %struct.nv50_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %11 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %6, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %7, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 49216)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %52 [
    i32 16424, label %19
    i32 16416, label %26
    i32 16392, label %33
    i32 16432, label %40
    i32 59408, label %47
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 2097152
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  br label %56

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 4194304
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  br label %56

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 65536
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  br label %56

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 33554432
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %56

47:                                               ; preds = %2
  %48 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %49 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %48, i32 0, i32 0
  %50 = load i32, i32* @nv_clk_src_crystal, align 4
  %51 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %68

52:                                               ; preds = %2
  %53 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @nvkm_error(%struct.nvkm_subdev* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 0, i32* %3, align 4
  br label %68

56:                                               ; preds = %40, %33, %26, %19
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %61 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %60, i32 0, i32 0
  %62 = load i32, i32* @nv_clk_src_href, align 4
  %63 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %61, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @read_pll_src(%struct.nv50_clk* %65, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %59, %52, %47
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_clk_read(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @read_pll_src(%struct.nv50_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
