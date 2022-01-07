; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gt215.c_gt215_devinit_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gt215.c_gt215_devinit_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { i32 }
%struct.nv50_devinit = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@gt215_devinit_mmio_part = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_devinit*, i32)* @gt215_devinit_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt215_devinit_mmio(%struct.nvkm_devinit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_devinit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_devinit*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %4, align 8
  %11 = call %struct.nv50_devinit* @nv50_devinit(%struct.nvkm_devinit* %10)
  store %struct.nv50_devinit* %11, %struct.nv50_devinit** %6, align 8
  %12 = load %struct.nv50_devinit*, %struct.nv50_devinit** %6, align 8
  %13 = getelementptr inbounds %struct.nv50_devinit, %struct.nv50_devinit* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %7, align 8
  %17 = load i32*, i32** @gt215_devinit_mmio_part, align 8
  store i32* %17, i32** %8, align 8
  br label %18

18:                                               ; preds = %63, %2
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  %41 = and i32 %40, 7
  store i32 %41, i32* %9, align 4
  %42 = load %struct.nv50_devinit*, %struct.nv50_devinit** %6, align 8
  %43 = getelementptr inbounds %struct.nv50_devinit, %struct.nv50_devinit* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %48 = call i32 @nvkm_rd32(%struct.nvkm_device* %47, i32 5440)
  %49 = load %struct.nv50_devinit*, %struct.nv50_devinit** %6, align 8
  %50 = getelementptr inbounds %struct.nv50_devinit, %struct.nv50_devinit* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %35
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.nv50_devinit*, %struct.nv50_devinit** %6, align 8
  %54 = getelementptr inbounds %struct.nv50_devinit, %struct.nv50_devinit* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = call i32 @hweight8(i32 %57)
  %59 = icmp sge i32 %52, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %68

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %29, %23
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32* %65, i32** %8, align 8
  br label %18

66:                                               ; preds = %18
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %61, %60
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.nv50_devinit* @nv50_devinit(%struct.nvkm_devinit*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
