; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_mthd_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_mthd_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nv31_mpeg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"inst %08x dma0 %08x dma1 %08x dma2 %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_device*, i32, i32)* @nv31_mpeg_mthd_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv31_mpeg_mthd_dma(%struct.nvkm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv31_mpeg*, align 8
  %9 = alloca %struct.nvkm_subdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nv31_mpeg* @nv31_mpeg(i32 %18)
  store %struct.nv31_mpeg* %19, %struct.nv31_mpeg** %8, align 8
  %20 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %8, align 8
  %21 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 7340032, %26
  %28 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 7340036, %30
  %32 = call i32 @nvkm_rd32(%struct.nvkm_device* %29, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 7340040, %34
  %36 = call i32 @nvkm_rd32(%struct.nvkm_device* %33, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, -4096
  %39 = load i32, i32* %11, align 4
  %40 = ashr i32 %39, 20
  %41 = or i32 %38, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 8192
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %3
  %48 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @nvkm_error(%struct.nvkm_subdev* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 0, i32* %4, align 4
  br label %102

54:                                               ; preds = %3
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 400
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 196608
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 65536, i32 0
  %64 = call i32 @nvkm_mask(%struct.nvkm_device* %58, i32 45824, i32 65536, i32 %63)
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @nvkm_wr32(%struct.nvkm_device* %65, i32 45876, i32 %66)
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @nvkm_wr32(%struct.nvkm_device* %68, i32 45860, i32 %69)
  br label %101

71:                                               ; preds = %54
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 416
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, 196608
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 131072, i32 0
  %81 = call i32 @nvkm_mask(%struct.nvkm_device* %75, i32 45824, i32 131072, i32 %80)
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @nvkm_wr32(%struct.nvkm_device* %82, i32 45920, i32 %83)
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @nvkm_wr32(%struct.nvkm_device* %85, i32 45924, i32 %86)
  br label %100

88:                                               ; preds = %71
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, 196608
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %102

93:                                               ; preds = %88
  %94 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @nvkm_wr32(%struct.nvkm_device* %94, i32 45936, i32 %95)
  %97 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @nvkm_wr32(%struct.nvkm_device* %97, i32 45940, i32 %98)
  br label %100

100:                                              ; preds = %93, %74
  br label %101

101:                                              ; preds = %100, %57
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %92, %47
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.nv31_mpeg* @nv31_mpeg(i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
