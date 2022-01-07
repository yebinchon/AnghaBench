; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_nv04_devinit_preinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_nv04_devinit_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { i32 }
%struct.nv04_devinit = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"adaptor not initialised\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv04_devinit_preinit(%struct.nvkm_devinit* %0) #0 {
  %2 = alloca %struct.nvkm_devinit*, align 8
  %3 = alloca %struct.nv04_devinit*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %2, align 8
  %7 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %8 = call %struct.nv04_devinit* @nv04_devinit(%struct.nvkm_devinit* %7)
  store %struct.nv04_devinit* %8, %struct.nv04_devinit** %3, align 8
  %9 = load %struct.nv04_devinit*, %struct.nv04_devinit** %3, align 8
  %10 = getelementptr inbounds %struct.nv04_devinit, %struct.nv04_devinit* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %4, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %16 = call i32 @nvkm_mask(%struct.nvkm_device* %15, i32 512, i32 1, i32 1)
  %17 = load %struct.nv04_devinit*, %struct.nv04_devinit** %3, align 8
  %18 = getelementptr inbounds %struct.nv04_devinit, %struct.nv04_devinit* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %23 = call i64 @nvkm_rdvgaowner(%struct.nvkm_device* %22)
  %24 = load %struct.nv04_devinit*, %struct.nv04_devinit** %3, align 8
  %25 = getelementptr inbounds %struct.nv04_devinit, %struct.nv04_devinit* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = call i32 @nvkm_wrvgaowner(%struct.nvkm_device* %27, i32 0)
  %29 = load %struct.nv04_devinit*, %struct.nv04_devinit** %3, align 8
  %30 = getelementptr inbounds %struct.nv04_devinit, %struct.nv04_devinit* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %26
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %36 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %35, i32 0, i32 6)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %38 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %37, i32 0, i32 7)
  %39 = and i32 %38, 1
  %40 = shl i32 %39, 8
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %44 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %43, i32 0, i32 7)
  %45 = and i32 %44, 32
  %46 = shl i32 %45, 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %50 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %49, i32 0, i32 37)
  %51 = and i32 %50, 1
  %52 = shl i32 %51, 10
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %56 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %55, i32 0, i32 65)
  %57 = and i32 %56, 1
  %58 = shl i32 %57, 11
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %34
  %64 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %65 = call i32 @nvkm_debug(%struct.nvkm_subdev* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.nv04_devinit*, %struct.nv04_devinit** %3, align 8
  %67 = getelementptr inbounds %struct.nv04_devinit, %struct.nv04_devinit* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %34
  br label %70

70:                                               ; preds = %69, %26
  ret void
}

declare dso_local %struct.nv04_devinit* @nv04_devinit(%struct.nvkm_devinit*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i64 @nvkm_rdvgaowner(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_wrvgaowner(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_rdvgac(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
