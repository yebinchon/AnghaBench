; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-feiyang-fy07024di26a30d.c_feiyang_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-feiyang-fy07024di26a30d.c_feiyang_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.feiyang = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to set display off: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enter sleep mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @feiyang_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feiyang_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.feiyang*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %5 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %6 = call %struct.feiyang* @panel_to_feiyang(%struct.drm_panel* %5)
  store %struct.feiyang* %6, %struct.feiyang** %3, align 8
  %7 = load %struct.feiyang*, %struct.feiyang** %3, align 8
  %8 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mipi_dsi_dcs_set_display_off(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %15 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DRM_DEV_ERROR(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.feiyang*, %struct.feiyang** %3, align 8
  %21 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mipi_dsi_dcs_enter_sleep_mode(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %28 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @DRM_DEV_ERROR(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = call i32 @msleep(i32 200)
  %34 = load %struct.feiyang*, %struct.feiyang** %3, align 8
  %35 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpiod_set_value(i32 %36, i32 0)
  %38 = load %struct.feiyang*, %struct.feiyang** %3, align 8
  %39 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_disable(i32 %40)
  %42 = call i32 @msleep(i32 10)
  %43 = load %struct.feiyang*, %struct.feiyang** %3, align 8
  %44 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regulator_disable(i32 %45)
  ret i32 0
}

declare dso_local %struct.feiyang* @panel_to_feiyang(%struct.drm_panel*) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_off(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
