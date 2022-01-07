; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_overlay.c_nv10_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_overlay.c_nv10_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_plane = type { i32, i32, i32, i64, i32, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nvif_object = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvif_object }

@NV_PVIDEO_COLOR_KEY = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i64 0, align 8
@NV_PVIDEO_FORMAT_MATRIX_ITURBT709 = common dso_local global i32 0, align 4
@NV_PVIDEO_FORMAT_DISPLAY_COLOR_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_plane*)* @nv10_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_set_params(%struct.nouveau_plane* %0) #0 {
  %2 = alloca %struct.nouveau_plane*, align 8
  %3 = alloca %struct.nvif_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_plane* %0, %struct.nouveau_plane** %2, align 8
  %7 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %8 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_8__* @nouveau_drm(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.nvif_object* %14, %struct.nvif_object** %3, align 8
  %15 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 512
  %19 = shl i32 %18, 16
  %20 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %21 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  store i32 %23, i32* %4, align 4
  %24 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %25 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %28 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sin_mul(i32 %26, i32 %29)
  %31 = and i32 %30, 65535
  %32 = shl i32 %31, 16
  %33 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %34 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %37 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cos_mul(i32 %35, i32 %38)
  %40 = and i32 %39, 65535
  %41 = or i32 %32, %40
  store i32 %41, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %42 = load %struct.nvif_object*, %struct.nvif_object** %3, align 8
  %43 = call i32 @NV_PVIDEO_LUMINANCE(i32 0)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @nvif_wr32(%struct.nvif_object* %42, i32 %43, i32 %44)
  %46 = load %struct.nvif_object*, %struct.nvif_object** %3, align 8
  %47 = call i32 @NV_PVIDEO_LUMINANCE(i32 1)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @nvif_wr32(%struct.nvif_object* %46, i32 %47, i32 %48)
  %50 = load %struct.nvif_object*, %struct.nvif_object** %3, align 8
  %51 = call i32 @NV_PVIDEO_CHROMINANCE(i32 0)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @nvif_wr32(%struct.nvif_object* %50, i32 %51, i32 %52)
  %54 = load %struct.nvif_object*, %struct.nvif_object** %3, align 8
  %55 = call i32 @NV_PVIDEO_CHROMINANCE(i32 1)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @nvif_wr32(%struct.nvif_object* %54, i32 %55, i32 %56)
  %58 = load %struct.nvif_object*, %struct.nvif_object** %3, align 8
  %59 = load i32, i32* @NV_PVIDEO_COLOR_KEY, align 4
  %60 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %61 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 16777215
  %64 = call i32 @nvif_wr32(%struct.nvif_object* %58, i32 %59, i32 %63)
  %65 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %66 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %1
  %70 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %71 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DRM_COLOR_YCBCR_BT709, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @NV_PVIDEO_FORMAT_MATRIX_ITURBT709, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %81 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 16777216
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @NV_PVIDEO_FORMAT_DISPLAY_COLOR_KEY, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.nvif_object*, %struct.nvif_object** %3, align 8
  %91 = load %struct.nouveau_plane*, %struct.nouveau_plane** %2, align 8
  %92 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @NV_PVIDEO_FORMAT(i32 %93)
  %95 = load i32, i32* @NV_PVIDEO_FORMAT_MATRIX_ITURBT709, align 4
  %96 = load i32, i32* @NV_PVIDEO_FORMAT_DISPLAY_COLOR_KEY, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @nvif_mask(%struct.nvif_object* %90, i32 %94, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %89, %1
  ret void
}

declare dso_local %struct.TYPE_8__* @nouveau_drm(i32) #1

declare dso_local i32 @sin_mul(i32, i32) #1

declare dso_local i32 @cos_mul(i32, i32) #1

declare dso_local i32 @nvif_wr32(%struct.nvif_object*, i32, i32) #1

declare dso_local i32 @NV_PVIDEO_LUMINANCE(i32) #1

declare dso_local i32 @NV_PVIDEO_CHROMINANCE(i32) #1

declare dso_local i32 @nvif_mask(%struct.nvif_object*, i32, i32, i32) #1

declare dso_local i32 @NV_PVIDEO_FORMAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
