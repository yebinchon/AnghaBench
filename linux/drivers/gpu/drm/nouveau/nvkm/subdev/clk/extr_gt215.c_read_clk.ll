; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_read_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_read_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_clk = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gt215_clk*, i32, i32)* @read_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_clk(%struct.gt215_clk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gt215_clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gt215_clk* %0, %struct.gt215_clk** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gt215_clk*, %struct.gt215_clk** %5, align 8
  %13 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 64
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 175
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 18204)
  %27 = mul nsw i32 %26, 1000
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %19
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %30 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %86

32:                                               ; preds = %3
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 16672, %35
  %37 = call i32 @nvkm_rd32(%struct.nvkm_device* %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 256
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %86

45:                                               ; preds = %40, %32
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 1024
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 108000, i32* %4, align 4
  br label %86

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 12288
  switch i32 %52, label %85 [
    i32 0, label %53
    i32 8192, label %62
    i32 12288, label %68
  ]

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 512
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %59 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  br label %86

61:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %86

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 64
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 108000, i32* %4, align 4
  br label %86

67:                                               ; preds = %62
  store i32 100000, i32* %4, align 4
  br label %86

68:                                               ; preds = %50
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %86

73:                                               ; preds = %68
  %74 = load %struct.gt215_clk*, %struct.gt215_clk** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @read_vco(%struct.gt215_clk* %74, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 4128768
  %79 = ashr i32 %78, 16
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %81, 2
  %83 = load i32, i32* %10, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %73, %72, %67, %66, %61, %57, %49, %44, %28, %24
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @read_vco(%struct.gt215_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
