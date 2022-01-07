; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.gt215_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown HOST clock source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid clock source %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, i32)* @gt215_clk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt215_clk_read(%struct.nvkm_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gt215_clk*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %11 = call %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk* %10)
  store %struct.gt215_clk* %11, %struct.gt215_clk** %6, align 8
  %12 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %13 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %7, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %8, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %57 [
    i32 134, label %19
    i32 136, label %23
    i32 135, label %23
    i32 129, label %26
    i32 131, label %29
    i32 133, label %32
    i32 128, label %35
    i32 130, label %38
    i32 132, label %41
  ]

19:                                               ; preds = %2
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2, %2
  %24 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %25 = call i32 @read_pll(%struct.gt215_clk* %24, i32 0, i32 16896)
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %2
  %27 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %28 = call i32 @read_pll(%struct.gt215_clk* %27, i32 1, i32 16928)
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %2
  %30 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %31 = call i32 @read_pll(%struct.gt215_clk* %30, i32 2, i32 16384)
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %2
  %33 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %34 = call i32 @read_clk(%struct.gt215_clk* %33, i32 32, i32 0)
  store i32 %34, i32* %3, align 4
  br label %63

35:                                               ; preds = %2
  %36 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %37 = call i32 @read_clk(%struct.gt215_clk* %36, i32 33, i32 0)
  store i32 %37, i32* %3, align 4
  br label %63

38:                                               ; preds = %2
  %39 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %40 = call i32 @read_clk(%struct.gt215_clk* %39, i32 37, i32 0)
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %2
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %43 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 49216)
  %44 = and i32 %43, 805306368
  %45 = ashr i32 %44, 28
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %51 [
    i32 0, label %47
    i32 2, label %50
    i32 3, label %50
  ]

47:                                               ; preds = %41
  %48 = load %struct.gt215_clk*, %struct.gt215_clk** %6, align 8
  %49 = call i32 @read_clk(%struct.gt215_clk* %48, i32 29, i32 0)
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %41, %41
  store i32 277000, i32* %3, align 4
  br label %63

51:                                               ; preds = %41
  %52 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @nvkm_error(%struct.nvkm_subdev* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %2
  %58 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @nvkm_error(%struct.nvkm_subdev* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %51, %50, %47, %38, %35, %32, %29, %26, %23, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @read_pll(%struct.gt215_clk*, i32, i32) #1

declare dso_local i32 @read_clk(%struct.gt215_clk*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
