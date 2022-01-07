; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_get_pllvals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_get_pllvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvkm_pll_vals = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.nvif_object }
%struct.TYPE_4__ = type { i64 }
%struct.nvif_object = type { i32 }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_pll = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@NV_RAMDAC_VPLL2 = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@NV_PRAMDAC_VPLL_COEFF = common dso_local global i32 0, align 4
@NV_PRAMDAC_580 = common dso_local global i32 0, align 4
@NV_RAMDAC_580_VPLL1_ACTIVE = common dso_local global i32 0, align 4
@NV_RAMDAC_580_VPLL2_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_hw_get_pllvals(%struct.drm_device* %0, i32 %1, %struct.nvkm_pll_vals* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_pll_vals*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.nvif_object*, align 8
  %10 = alloca %struct.nvkm_bios*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvbios_pll, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_pll_vals* %2, %struct.nvkm_pll_vals** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %8, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.nvif_object* %23, %struct.nvif_object** %9, align 8
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %25 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call %struct.nvkm_bios* @nvxx_bios(%struct.TYPE_6__* %26)
  store %struct.nvkm_bios* %27, %struct.nvkm_bios** %10, align 8
  store i32 0, i32* %13, align 4
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %28, i32 %29, %struct.nvbios_pll* %14)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %14, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33, %3
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %113

40:                                               ; preds = %33
  %41 = load %struct.nvif_object*, %struct.nvif_object** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @nvif_rd32(%struct.nvif_object* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp sle i32 %44, 16476
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.nvif_object*, %struct.nvif_object** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 4
  %50 = call i32 @nvif_rd32(%struct.nvif_object* %47, i32 %49)
  store i32 %50, i32* %13, align 4
  br label %67

51:                                               ; preds = %40
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = call i64 @nv_two_reg_pll(%struct.drm_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @NV_RAMDAC_VPLL2, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 92, i32 112
  %62 = add nsw i32 %56, %61
  store i32 %62, i32* %16, align 4
  %63 = load %struct.nvif_object*, %struct.nvif_object** %9, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @nvif_rd32(%struct.nvif_object* %63, i32 %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %55, %51
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %69 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @NV_PRAMDAC_VPLL_COEFF, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %76
  %81 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %82 = load i32, i32* @NV_PRAMDAC_580, align 4
  %83 = call i32 @NVReadRAMDAC(%struct.drm_device* %81, i32 0, i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @NV_PRAMDAC_VPLL_COEFF, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* @NV_RAMDAC_580_VPLL1_ACTIVE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %92, %87
  br label %101

94:                                               ; preds = %80
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @NV_RAMDAC_580_VPLL2_ACTIVE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %99, %94
  br label %101

101:                                              ; preds = %100, %93
  br label %102

102:                                              ; preds = %101, %76, %67
  %103 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %7, align 8
  %108 = call i32 @nouveau_hw_decode_pll(%struct.drm_device* %103, i32 %104, i32 %105, i32 %106, %struct.nvkm_pll_vals* %107)
  %109 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %14, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %7, align 8
  %112 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %102, %37
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_bios* @nvxx_bios(%struct.TYPE_6__*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nvkm_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nvif_rd32(%struct.nvif_object*, i32) #1

declare dso_local i64 @nv_two_reg_pll(%struct.drm_device*) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nouveau_hw_decode_pll(%struct.drm_device*, i32, i32, i32, %struct.nvkm_pll_vals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
