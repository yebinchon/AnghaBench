; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_setup_symmetrical_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_setup_symmetrical_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.drm_display_mode = type { i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"failed to set column address: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set page address: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*, %struct.mipi_dsi_device*, %struct.drm_display_mode*)* @sharp_setup_symmetrical_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_setup_symmetrical_split(%struct.mipi_dsi_device* %0, %struct.mipi_dsi_device* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.mipi_dsi_device*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %5, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %9 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sdiv i32 %12, 2
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @mipi_dsi_dcs_set_column_address(%struct.mipi_dsi_device* %9, i32 0, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %20 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @mipi_dsi_dcs_set_page_address(%struct.mipi_dsi_device* %25, i32 0, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %35 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %74

39:                                               ; preds = %24
  %40 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %43, 2
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @mipi_dsi_dcs_set_column_address(%struct.mipi_dsi_device* %40, i32 %44, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %39
  %53 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %54 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %53, i32 0, i32 0
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %74

58:                                               ; preds = %39
  %59 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  %64 = call i32 @mipi_dsi_dcs_set_page_address(%struct.mipi_dsi_device* %59, i32 0, i64 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %69 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %68, i32 0, i32 0
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %67, %52, %33, %18
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @mipi_dsi_dcs_set_column_address(%struct.mipi_dsi_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_page_address(%struct.mipi_dsi_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
