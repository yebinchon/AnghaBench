; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.gt215_clk_info = type { i32 }
%struct.gt215_clk = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, i32, i32, %struct.gt215_clk_info*)* @gt215_clk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt215_clk_info(%struct.nvkm_clk* %0, i32 %1, i32 %2, %struct.gt215_clk_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gt215_clk_info*, align 8
  %10 = alloca %struct.gt215_clk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gt215_clk_info* %3, %struct.gt215_clk_info** %9, align 8
  %15 = load %struct.nvkm_clk*, %struct.nvkm_clk** %6, align 8
  %16 = call %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk* %15)
  store %struct.gt215_clk* %16, %struct.gt215_clk** %10, align 8
  %17 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %9, align 8
  %18 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %32 [
    i32 27000, label %20
    i32 100000, label %24
    i32 108000, label %28
  ]

20:                                               ; preds = %4
  %21 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %9, align 8
  %22 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %21, i32 0, i32 0
  store i32 256, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %5, align 4
  br label %73

24:                                               ; preds = %4
  %25 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %9, align 8
  %26 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %25, i32 0, i32 0
  store i32 8448, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %5, align 4
  br label %73

28:                                               ; preds = %4
  %29 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %9, align 8
  %30 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %29, i32 0, i32 0
  store i32 8512, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %5, align 4
  br label %73

32:                                               ; preds = %4
  %33 = load %struct.gt215_clk*, %struct.gt215_clk** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @read_vco(%struct.gt215_clk* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* %8, align 4
  %39 = sdiv i32 %37, %38
  %40 = call i32 @min(i32 %39, i32 65)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %41, 2
  %43 = load i32, i32* %13, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 3000
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %32
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %54, 2
  %56 = load i32, i32* %13, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %51, %32
  %59 = load i32, i32* %13, align 4
  %60 = icmp sgt i32 %59, 4
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %62, 2
  %64 = shl i32 %63, 16
  %65 = or i32 %64, 12544
  %66 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %9, align 8
  %67 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %73

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* @ERANGE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %61, %28, %24, %20
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @read_vco(%struct.gt215_clk*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
