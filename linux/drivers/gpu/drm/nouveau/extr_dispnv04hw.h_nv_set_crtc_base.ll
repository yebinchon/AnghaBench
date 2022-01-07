; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_dispnv04hw.h_nv_set_crtc_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_dispnv04hw.h_nv_set_crtc_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NV_PCRTC_START = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_TNT = common dso_local global i64 0, align 8
@NV_CIO_CRE_HEB__INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32)* @nv_set_crtc_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_set_crtc_base(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NV_PCRTC_START, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @NVWriteCRTC(%struct.drm_device* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NV_DEVICE_INFO_V0_TNT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NV_CIO_CRE_HEB__INDEX, align 4
  %28 = call i32 @NVReadVgaCrtc(%struct.drm_device* %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @NV_CIO_CRE_HEB__INDEX, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, -65
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 18
  %36 = and i32 %35, 64
  %37 = or i32 %33, %36
  %38 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %29, i32 %30, i32 %31, i32 %37)
  br label %39

39:                                               ; preds = %24, %3
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NVWriteCRTC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaCrtc(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
