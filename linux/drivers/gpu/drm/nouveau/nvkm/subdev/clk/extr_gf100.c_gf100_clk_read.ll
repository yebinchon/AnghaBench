; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_gf100_clk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_gf100_clk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.gf100_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid clock source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, i32)* @gf100_clk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_clk_read(%struct.nvkm_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gf100_clk*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %10 = call %struct.gf100_clk* @gf100_clk(%struct.nvkm_clk* %9)
  store %struct.gf100_clk* %10, %struct.gf100_clk** %6, align 8
  %11 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %12 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %7, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %8, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %78 [
    i32 143, label %18
    i32 141, label %22
    i32 130, label %23
    i32 129, label %26
    i32 133, label %29
    i32 134, label %32
    i32 135, label %35
    i32 137, label %38
    i32 136, label %41
    i32 142, label %54
    i32 131, label %57
    i32 138, label %60
    i32 139, label %63
    i32 140, label %66
    i32 144, label %69
    i32 132, label %72
    i32 128, label %75
  ]

18:                                               ; preds = %2
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %84

22:                                               ; preds = %2
  store i32 100000, i32* %3, align 4
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %25 = call i32 @read_pll(%struct.gf100_clk* %24, i32 59392)
  store i32 %25, i32* %3, align 4
  br label %84

26:                                               ; preds = %2
  %27 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %28 = call i32 @read_pll(%struct.gf100_clk* %27, i32 59424)
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %2
  %30 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %31 = call i32 @read_div(%struct.gf100_clk* %30, i32 0, i32 1274656, i32 1274672)
  store i32 %31, i32* %3, align 4
  br label %84

32:                                               ; preds = %2
  %33 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %34 = call i32 @read_pll(%struct.gf100_clk* %33, i32 1253408)
  store i32 %34, i32* %3, align 4
  br label %84

35:                                               ; preds = %2
  %36 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %37 = call i32 @read_pll(%struct.gf100_clk* %36, i32 1253376)
  store i32 %37, i32* %3, align 4
  br label %84

38:                                               ; preds = %2
  %39 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %40 = call i32 @read_div(%struct.gf100_clk* %39, i32 0, i32 1274624, i32 1274640)
  store i32 %40, i32* %3, align 4
  br label %84

41:                                               ; preds = %2
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %43 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 1274864)
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %48 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %47, i32 0, i32 0
  %49 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %48, i32 135)
  store i32 %49, i32* %3, align 4
  br label %84

50:                                               ; preds = %41
  %51 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %52 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %51, i32 0, i32 0
  %53 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %52, i32 137)
  store i32 %53, i32* %3, align 4
  br label %84

54:                                               ; preds = %2
  %55 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %56 = call i32 @read_clk(%struct.gf100_clk* %55, i32 0)
  store i32 %56, i32* %3, align 4
  br label %84

57:                                               ; preds = %2
  %58 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %59 = call i32 @read_clk(%struct.gf100_clk* %58, i32 1)
  store i32 %59, i32* %3, align 4
  br label %84

60:                                               ; preds = %2
  %61 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %62 = call i32 @read_clk(%struct.gf100_clk* %61, i32 2)
  store i32 %62, i32* %3, align 4
  br label %84

63:                                               ; preds = %2
  %64 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %65 = call i32 @read_clk(%struct.gf100_clk* %64, i32 7)
  store i32 %65, i32* %3, align 4
  br label %84

66:                                               ; preds = %2
  %67 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %68 = call i32 @read_clk(%struct.gf100_clk* %67, i32 8)
  store i32 %68, i32* %3, align 4
  br label %84

69:                                               ; preds = %2
  %70 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %71 = call i32 @read_clk(%struct.gf100_clk* %70, i32 9)
  store i32 %71, i32* %3, align 4
  br label %84

72:                                               ; preds = %2
  %73 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %74 = call i32 @read_clk(%struct.gf100_clk* %73, i32 12)
  store i32 %74, i32* %3, align 4
  br label %84

75:                                               ; preds = %2
  %76 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %77 = call i32 @read_clk(%struct.gf100_clk* %76, i32 14)
  store i32 %77, i32* %3, align 4
  br label %84

78:                                               ; preds = %2
  %79 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @nvkm_error(%struct.nvkm_subdev* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %75, %72, %69, %66, %63, %60, %57, %54, %50, %46, %38, %35, %32, %29, %26, %23, %22, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.gf100_clk* @gf100_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @read_pll(%struct.gf100_clk*, i32) #1

declare dso_local i32 @read_div(%struct.gf100_clk*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_clk_read(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @read_clk(%struct.gf100_clk*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
