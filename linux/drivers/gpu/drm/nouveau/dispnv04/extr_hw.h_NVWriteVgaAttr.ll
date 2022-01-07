; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.h_NVWriteVgaAttr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.h_NVWriteVgaAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvif_object = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvif_object }

@NV_PRMCIO_INP0__COLOR = common dso_local global i64 0, align 8
@NV_PRMCIO_SIZE = common dso_local global i32 0, align 4
@NV_PRMCIO_ARX = common dso_local global i64 0, align 8
@NV_PRMCIO_AR__WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, i32)* @NVWriteVgaAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVWriteVgaAttr(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvif_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = call %struct.TYPE_6__* @nouveau_drm(%struct.drm_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.nvif_object* %14, %struct.nvif_object** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @NVGetEnablePalette(%struct.drm_device* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, -33
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 32
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.nvif_object*, %struct.nvif_object** %9, align 8
  %27 = load i64, i64* @NV_PRMCIO_INP0__COLOR, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %27, %31
  %33 = call i32 @nvif_rd08(%struct.nvif_object* %26, i64 %32)
  %34 = load %struct.nvif_object*, %struct.nvif_object** %9, align 8
  %35 = load i64, i64* @NV_PRMCIO_ARX, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @nvif_wr08(%struct.nvif_object* %34, i64 %40, i32 %41)
  %43 = load %struct.nvif_object*, %struct.nvif_object** %9, align 8
  %44 = load i64, i64* @NV_PRMCIO_AR__WRITE, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @nvif_wr08(%struct.nvif_object* %43, i64 %49, i32 %50)
  ret void
}

declare dso_local %struct.TYPE_6__* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @NVGetEnablePalette(%struct.drm_device*, i32) #1

declare dso_local i32 @nvif_rd08(%struct.nvif_object*, i64) #1

declare dso_local i32 @nvif_wr08(%struct.nvif_object*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
