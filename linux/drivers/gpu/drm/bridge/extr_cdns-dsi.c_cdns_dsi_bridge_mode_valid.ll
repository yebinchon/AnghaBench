; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_bridge_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_bridge_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.cdns_dsi_input = type { i32 }
%struct.cdns_dsi = type { %struct.cdns_dsi_output }
%struct.cdns_dsi_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cdns_dsi_cfg = type { i32 }

@MODE_V_ILLEGAL = common dso_local global i32 0, align 4
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*, %struct.drm_display_mode*)* @cdns_dsi_bridge_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dsi_bridge_mode_valid(%struct.drm_bridge* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.cdns_dsi_input*, align 8
  %7 = alloca %struct.cdns_dsi*, align 8
  %8 = alloca %struct.cdns_dsi_output*, align 8
  %9 = alloca %struct.cdns_dsi_cfg, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %13 = call %struct.cdns_dsi_input* @bridge_to_cdns_dsi_input(%struct.drm_bridge* %12)
  store %struct.cdns_dsi_input* %13, %struct.cdns_dsi_input** %6, align 8
  %14 = load %struct.cdns_dsi_input*, %struct.cdns_dsi_input** %6, align 8
  %15 = call %struct.cdns_dsi* @input_to_dsi(%struct.cdns_dsi_input* %14)
  store %struct.cdns_dsi* %15, %struct.cdns_dsi** %7, align 8
  %16 = load %struct.cdns_dsi*, %struct.cdns_dsi** %7, align 8
  %17 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %16, i32 0, i32 0
  store %struct.cdns_dsi_output* %17, %struct.cdns_dsi_output** %8, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @MODE_V_ILLEGAL, align 4
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @MODE_V_ILLEGAL, align 4
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %28
  %40 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %8, align 8
  %41 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %48, %49
  %51 = srem i32 %50, 32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %54, i32* %3, align 4
  br label %65

55:                                               ; preds = %39
  %56 = load %struct.cdns_dsi*, %struct.cdns_dsi** %7, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = call i32 @cdns_dsi_check_conf(%struct.cdns_dsi* %56, %struct.drm_display_mode* %57, %struct.cdns_dsi_cfg* %9, i32 1)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @MODE_BAD, align 4
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @MODE_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %61, %53, %37, %26
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.cdns_dsi_input* @bridge_to_cdns_dsi_input(%struct.drm_bridge*) #1

declare dso_local %struct.cdns_dsi* @input_to_dsi(%struct.cdns_dsi_input*) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @cdns_dsi_check_conf(%struct.cdns_dsi*, %struct.drm_display_mode*, %struct.cdns_dsi_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
