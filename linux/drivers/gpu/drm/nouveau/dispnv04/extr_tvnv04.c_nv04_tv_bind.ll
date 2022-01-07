; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_crtc_reg = type { i32*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nv04_crtc_reg* }

@NV_CIO_CRE_49 = common dso_local global i64 0, align 8
@NV_CIO_CRE_LCD__INDEX = common dso_local global i64 0, align 8
@NV_PRAMDAC_TV_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32)* @nv04_tv_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_tv_bind(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv04_crtc_reg*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call %struct.TYPE_4__* @nv04_display(%struct.drm_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %12, i64 %14
  store %struct.nv04_crtc_reg* %15, %struct.nv04_crtc_reg** %7, align 8
  %16 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %17 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %22 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @NV_CIO_CRE_49, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, 16
  store i32 %27, i32* %25, align 4
  br label %36

28:                                               ; preds = %3
  %29 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %30 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @NV_CIO_CRE_49, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, -17
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* @NV_CIO_CRE_LCD__INDEX, align 8
  %40 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %41 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @NV_CIO_CRE_LCD__INDEX, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %37, i32 %38, i64 %39, i32 %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* @NV_CIO_CRE_49, align 8
  %50 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %51 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @NV_CIO_CRE_49, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %47, i32 %48, i64 %49, i32 %55)
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NV_PRAMDAC_TV_SETUP, align 4
  %60 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %61 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @NVWriteRAMDAC(%struct.drm_device* %57, i32 %58, i32 %59, i64 %62)
  ret void
}

declare dso_local %struct.TYPE_4__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @NVWriteVgaCrtc(%struct.drm_device*, i32, i64, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
