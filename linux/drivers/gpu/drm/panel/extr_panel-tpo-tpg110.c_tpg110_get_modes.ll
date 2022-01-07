; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-tpg110.c_tpg110_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-tpg110.c_tpg110_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.tpg110 = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @tpg110_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpg110_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.tpg110*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %7 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %6, i32 0, i32 1
  %8 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  store %struct.drm_connector* %8, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %10 = call %struct.tpg110* @to_tpg110(%struct.drm_panel* %9)
  store %struct.tpg110* %10, %struct.tpg110** %4, align 8
  %11 = load %struct.tpg110*, %struct.tpg110** %4, align 8
  %12 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load %struct.tpg110*, %struct.tpg110** %4, align 8
  %18 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.tpg110*, %struct.tpg110** %4, align 8
  %24 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %32 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.tpg110*, %struct.tpg110** %4, align 8
  %35 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %33, i32* %37)
  store %struct.drm_display_mode* %38, %struct.drm_display_mode** %5, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %40 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %39)
  %41 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %42 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tpg110*, %struct.tpg110** %4, align 8
  %47 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.tpg110*, %struct.tpg110** %4, align 8
  %52 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = call i32 @drm_mode_probed_add(%struct.drm_connector* %56, %struct.drm_display_mode* %57)
  ret i32 1
}

declare dso_local %struct.tpg110* @to_tpg110(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
