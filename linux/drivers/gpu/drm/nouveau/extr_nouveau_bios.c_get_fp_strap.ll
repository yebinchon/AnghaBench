; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_get_fp_strap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_get_fp_strap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32, i32* }
%struct.nouveau_drm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.nvif_object }
%struct.TYPE_4__ = type { i64 }
%struct.nvif_object = type { i32 }

@NV_DEVICE_INFO_V0_MAXWELL = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@NV_PEXTDEV_BOOT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*)* @get_fp_strap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fp_strap(%struct.drm_device* %0, %struct.nvbios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvif_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nvbios* %1, %struct.nvbios** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %6, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.nvif_object* %13, %struct.nvif_object** %7, align 8
  %14 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %15 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %20 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 72
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = call i32 @NVReadVgaCrtc5758(%struct.drm_device* %27, i32 0, i32 15)
  %29 = and i32 %28, 15
  store i32 %29, i32* %3, align 4
  br label %64

30:                                               ; preds = %18, %2
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NV_DEVICE_INFO_V0_MAXWELL, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %41 = call i32 @nvif_rd32(%struct.nvif_object* %40, i32 6144)
  %42 = and i32 %41, 15
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %30
  %44 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %45 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %54 = load i32, i32* @NV_PEXTDEV_BOOT_0, align 4
  %55 = call i32 @nvif_rd32(%struct.nvif_object* %53, i32 %54)
  %56 = ashr i32 %55, 24
  %57 = and i32 %56, 15
  store i32 %57, i32* %3, align 4
  br label %64

58:                                               ; preds = %43
  %59 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %60 = load i32, i32* @NV_PEXTDEV_BOOT_0, align 4
  %61 = call i32 @nvif_rd32(%struct.nvif_object* %59, i32 %60)
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 15
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %52, %39, %26
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NVReadVgaCrtc5758(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nvif_rd32(%struct.nvif_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
