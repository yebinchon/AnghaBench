; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_get_drq_edge1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_get_drq_edge1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@SUN6I_DSI_SYNC_POINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sun6i_dsi*, %struct.drm_display_mode*, i64)* @sun6i_dsi_get_drq_edge1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun6i_dsi_get_drq_edge1(%struct.sun6i_dsi* %0, %struct.drm_display_mode* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sun6i_dsi*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mipi_dsi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %5, align 8
  %13 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %12, i32 0, i32 0
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %13, align 8
  store %struct.mipi_dsi_device* %14, %struct.mipi_dsi_device** %8, align 8
  %15 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %17)
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load i64, i64* @SUN6I_DSI_SYNC_POINT, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %30, %31
  %33 = add i32 %32, 20
  %34 = load i32, i32* %9, align 4
  %35 = mul i32 %33, %34
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = udiv i32 %35, %38
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %4, align 8
  br label %50

48:                                               ; preds = %3
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
