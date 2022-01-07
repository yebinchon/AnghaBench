; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_read_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_read_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gt215_clk*, i32, i32)* @read_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll(%struct.gt215_clk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gt215_clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gt215_clk* %0, %struct.gt215_clk** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.gt215_clk*, %struct.gt215_clk** %5, align 8
  %17 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %8, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 0
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 %23)
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 4
  %36 = call i32 @nvkm_rd32(%struct.nvkm_device* %33, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = and i32 %37, 255
  %39 = ashr i32 %38, 0
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %40, 65280
  %42 = ashr i32 %41, 8
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %15, align 4
  %44 = and i32 %43, 4128768
  %45 = ashr i32 %44, 16
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 65280
  %48 = icmp eq i32 %47, 59392
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.gt215_clk*, %struct.gt215_clk** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 0, %52
  %54 = call i32 @read_clk(%struct.gt215_clk* %51, i32 %53, i32 0)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %28
  br label %61

56:                                               ; preds = %3
  %57 = load %struct.gt215_clk*, %struct.gt215_clk** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 16, %58
  %60 = call i32 @read_clk(%struct.gt215_clk* %57, i32 %59, i32 0)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %55
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %74

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %14, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %67
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @read_clk(%struct.gt215_clk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
