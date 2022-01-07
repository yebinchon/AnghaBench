; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_gk104_clk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_gk104_clk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.gk104_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid clock source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, i32)* @gk104_clk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_clk_read(%struct.nvkm_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gk104_clk*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %10 = call %struct.gk104_clk* @gk104_clk(%struct.nvkm_clk* %9)
  store %struct.gk104_clk* %10, %struct.gk104_clk** %6, align 8
  %11 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %12 = getelementptr inbounds %struct.gk104_clk, %struct.gk104_clk* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %7, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %8, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %47 [
    i32 137, label %18
    i32 135, label %22
    i32 131, label %23
    i32 136, label %26
    i32 129, label %29
    i32 132, label %32
    i32 133, label %35
    i32 134, label %38
    i32 130, label %41
    i32 128, label %44
  ]

18:                                               ; preds = %2
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  store i32 100000, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %25 = call i32 @read_mem(%struct.gk104_clk* %24)
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %2
  %27 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %28 = call i32 @read_clk(%struct.gk104_clk* %27, i32 0)
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %31 = call i32 @read_clk(%struct.gk104_clk* %30, i32 1)
  store i32 %31, i32* %3, align 4
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %34 = call i32 @read_clk(%struct.gk104_clk* %33, i32 2)
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %2
  %36 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %37 = call i32 @read_clk(%struct.gk104_clk* %36, i32 7)
  store i32 %37, i32* %3, align 4
  br label %53

38:                                               ; preds = %2
  %39 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %40 = call i32 @read_clk(%struct.gk104_clk* %39, i32 8)
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %2
  %42 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %43 = call i32 @read_clk(%struct.gk104_clk* %42, i32 12)
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %2
  %45 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %46 = call i32 @read_clk(%struct.gk104_clk* %45, i32 14)
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @nvkm_error(%struct.nvkm_subdev* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %44, %41, %38, %35, %32, %29, %26, %23, %22, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.gk104_clk* @gk104_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @read_mem(%struct.gk104_clk*) #1

declare dso_local i32 @read_clk(%struct.gk104_clk*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
