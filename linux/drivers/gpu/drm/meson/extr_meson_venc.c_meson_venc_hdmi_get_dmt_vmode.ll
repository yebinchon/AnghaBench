; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_hdmi_get_dmt_vmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_hdmi_get_dmt_vmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%union.meson_hdmi_venc_mode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meson_venc_hdmi_get_dmt_vmode(%struct.drm_display_mode* %0, %union.meson_hdmi_venc_mode* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %union.meson_hdmi_venc_mode*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store %union.meson_hdmi_venc_mode* %1, %union.meson_hdmi_venc_mode** %4, align 8
  %5 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %6 = call i32 @memset(%union.meson_hdmi_venc_mode* %5, i32 0, i32 104)
  %7 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %8 = bitcast %union.meson_hdmi_venc_mode* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 33, i32* %9, align 8
  %10 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %11 = bitcast %union.meson_hdmi_venc_mode* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 16448, i32* %12, align 4
  %13 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %14 = bitcast %union.meson_hdmi_venc_mode* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 24, i32* %15, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %21 = bitcast %union.meson_hdmi_venc_mode* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 15
  store i64 %19, i64* %22, align 8
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %31 = bitcast %union.meson_hdmi_venc_mode* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 13
  store i64 %29, i64* %32, align 8
  %33 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %34 = bitcast %union.meson_hdmi_venc_mode* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 13
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = sub nsw i64 %40, 1
  %42 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %43 = bitcast %union.meson_hdmi_venc_mode* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 14
  store i64 %41, i64* %44, align 8
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %53 = bitcast %union.meson_hdmi_venc_mode* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 11
  store i64 %51, i64* %54, align 8
  %55 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %56 = bitcast %union.meson_hdmi_venc_mode* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 11
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = sub nsw i64 %62, 1
  %64 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %65 = bitcast %union.meson_hdmi_venc_mode* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 12
  store i64 %63, i64* %66, align 8
  %67 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %68 = bitcast %union.meson_hdmi_venc_mode* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 10
  store i64 0, i64* %69, align 8
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %78 = bitcast %union.meson_hdmi_venc_mode* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 9
  store i64 %76, i64* %79, align 8
  %80 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %81 = bitcast %union.meson_hdmi_venc_mode* %80 to %struct.TYPE_2__*
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 30, i32* %82, align 4
  %83 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %84 = bitcast %union.meson_hdmi_venc_mode* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i32 50, i32* %85, align 8
  %86 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %87 = bitcast %union.meson_hdmi_venc_mode* %86 to %struct.TYPE_2__*
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 8
  store i64 0, i64* %88, align 8
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %97 = bitcast %union.meson_hdmi_venc_mode* %96 to %struct.TYPE_2__*
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 7
  store i64 %95, i64* %98, align 8
  %99 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %100 = bitcast %union.meson_hdmi_venc_mode* %99 to %struct.TYPE_2__*
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  store i32 1, i32* %101, align 4
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 1
  %106 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %4, align 8
  %107 = bitcast %union.meson_hdmi_venc_mode* %106 to %struct.TYPE_2__*
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 6
  store i64 %105, i64* %108, align 8
  ret void
}

declare dso_local i32 @memset(%union.meson_hdmi_venc_mode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
