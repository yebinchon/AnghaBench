; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls037v7dw01.c_ls037v7dw01_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls037v7dw01.c_ls037v7dw01_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.drm_panel = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32 }

@ls037v7dw01_mode = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_HIGH = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @ls037v7dw01_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls037v7dw01_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %6, i32 0, i32 1
  %8 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  store %struct.drm_connector* %8, %struct.drm_connector** %4, align 8
  %9 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %10 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %11, %struct.TYPE_5__* @ls037v7dw01_mode)
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = icmp ne %struct.drm_display_mode* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %19)
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = call i32 @drm_mode_probed_add(%struct.drm_connector* %21, %struct.drm_display_mode* %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ls037v7dw01_mode, i32 0, i32 1), align 4
  %25 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ls037v7dw01_mode, i32 0, i32 0), align 4
  %29 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %30 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @DRM_BUS_FLAG_DE_HIGH, align 4
  %33 = load i32, i32* @DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %18, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
