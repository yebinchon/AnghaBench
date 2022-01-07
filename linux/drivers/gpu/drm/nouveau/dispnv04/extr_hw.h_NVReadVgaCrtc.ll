; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.h_NVReadVgaCrtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.h_NVReadVgaCrtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvif_object = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvif_object }

@NV_PRMCIO_CRX__COLOR = common dso_local global i64 0, align 8
@NV_PRMCIO_SIZE = common dso_local global i32 0, align 4
@NV_PRMCIO_CR__COLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32)* @NVReadVgaCrtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NVReadVgaCrtc(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvif_object*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.TYPE_6__* @nouveau_drm(%struct.drm_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.nvif_object* %13, %struct.nvif_object** %7, align 8
  %14 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %15 = load i64, i64* @NV_PRMCIO_CRX__COLOR, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @nvif_wr08(%struct.nvif_object* %14, i64 %20, i32 %21)
  %23 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %24 = load i64, i64* @NV_PRMCIO_CR__COLOR, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  %30 = call i32 @nvif_rd08(%struct.nvif_object* %23, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_6__* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nvif_wr08(%struct.nvif_object*, i64, i32) #1

declare dso_local i32 @nvif_rd08(%struct.nvif_object*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
