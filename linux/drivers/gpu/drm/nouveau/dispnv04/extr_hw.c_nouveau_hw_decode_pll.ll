; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_decode_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_decode_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvkm_pll_vals = type { i32, i32, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NV31_RAMDAC_ENABLE_VCO2 = common dso_local global i32 0, align 4
@NV30_RAMDAC_ENABLE_VCO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, i32, %struct.nvkm_pll_vals*)* @nouveau_hw_decode_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_hw_decode_pll(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, %struct.nvkm_pll_vals* %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_pll_vals*, align 8
  %11 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.nvkm_pll_vals* %4, %struct.nvkm_pll_vals** %10, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 7
  %17 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %18 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %20 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %19, i32 0, i32 2
  store i32 1, i32* %20, align 4
  %21 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %22 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 16476
  br i1 %24, label %25, label %39

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 65535
  %28 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %29 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 4352
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 16
  %36 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %37 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %25
  br label %100

39:                                               ; preds = %5
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 65535
  %42 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %43 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = call i64 @nv_two_reg_pll(%struct.drm_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @NV31_RAMDAC_ENABLE_VCO2, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 65535
  %55 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %56 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  br label %99

57:                                               ; preds = %47, %39
  %58 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %59 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 48
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %67 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 53
  br i1 %72, label %73, label %98

73:                                               ; preds = %65, %57
  %74 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %75 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @NV30_RAMDAC_ENABLE_VCO2, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %73
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 4
  %85 = and i32 %84, 7
  %86 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %87 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 21
  %90 = and i32 %89, 24
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 19
  %93 = and i32 %92, 7
  %94 = or i32 %90, %93
  %95 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %10, align 8
  %96 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %82, %73
  br label %98

98:                                               ; preds = %97, %65
  br label %99

99:                                               ; preds = %98, %52
  br label %100

100:                                              ; preds = %99, %38
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @nv_two_reg_pll(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
