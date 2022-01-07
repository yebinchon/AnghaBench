; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.sharp_panel = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to set display off: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enter sleep mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @sharp_panel_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_panel_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.sharp_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.sharp_panel* @to_sharp_panel(%struct.drm_panel* %6)
  store %struct.sharp_panel* %7, %struct.sharp_panel** %4, align 8
  %8 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %9 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %15 = call i32 @sharp_wait_frames(%struct.sharp_panel* %14, i32 4)
  %16 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %17 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mipi_dsi_dcs_set_display_off(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %24 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %13
  %29 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %30 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mipi_dsi_dcs_enter_sleep_mode(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %37 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = call i32 @msleep(i32 120)
  %43 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %44 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regulator_disable(i32 %45)
  %47 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %48 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.sharp_panel* @to_sharp_panel(%struct.drm_panel*) #1

declare dso_local i32 @sharp_wait_frames(%struct.sharp_panel*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_off(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
