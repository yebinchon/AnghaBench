; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_load_state_palette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_load_state_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_mode_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.nvif_object = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvif_object }

@NV_PRMDIO_SIZE = common dso_local global i32 0, align 4
@NV_PRMDIO_PIXEL_MASK = common dso_local global i64 0, align 8
@NV_PRMDIO_PIXEL_MASK_MASK = common dso_local global i32 0, align 4
@NV_PRMDIO_WRITE_MODE_ADDRESS = common dso_local global i64 0, align 8
@NV_PRMDIO_PALETTE_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_hw_load_state_palette(%struct.drm_device* %0, i32 %1, %struct.nv04_mode_state* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv04_mode_state*, align 8
  %7 = alloca %struct.nvif_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nv04_mode_state* %2, %struct.nv04_mode_state** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.TYPE_8__* @nouveau_drm(%struct.drm_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.nvif_object* %14, %struct.nvif_object** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NV_PRMDIO_SIZE, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %19 = load i64, i64* @NV_PRMDIO_PIXEL_MASK, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* @NV_PRMDIO_PIXEL_MASK_MASK, align 4
  %24 = call i32 @nvif_wr08(%struct.nvif_object* %18, i64 %22, i32 %23)
  %25 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %26 = load i64, i64* @NV_PRMDIO_WRITE_MODE_ADDRESS, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @nvif_wr08(%struct.nvif_object* %25, i64 %29, i32 0)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %53, %3
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 768
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %36 = load i64, i64* @NV_PRMDIO_PALETTE_DATA, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %41 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nvif_wr08(%struct.nvif_object* %35, i64 %39, i32 %51)
  br label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @NVSetEnablePalette(%struct.drm_device* %57, i32 %58, i32 0)
  ret void
}

declare dso_local %struct.TYPE_8__* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nvif_wr08(%struct.nvif_object*, i64, i32) #1

declare dso_local i32 @NVSetEnablePalette(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
