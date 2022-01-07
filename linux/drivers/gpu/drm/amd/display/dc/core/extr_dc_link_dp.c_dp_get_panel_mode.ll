; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_get_panel_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_get_panel_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i64 0, align 8
@DP_VGA_LVDS_CONVERTER_ID_2 = common dso_local global i32 0, align 4
@DP_PANEL_MODE_SPECIAL = common dso_local global i32 0, align 4
@DP_VGA_LVDS_CONVERTER_ID_3 = common dso_local global i32 0, align 4
@DP_PANEL_MODE_EDP = common dso_local global i32 0, align 4
@DP_PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dp_get_panel_mode(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  %4 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %5 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %11 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %36 [
    i32 128, label %14
    i32 129, label %25
  ]

14:                                               ; preds = %9
  %15 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DP_VGA_LVDS_CONVERTER_ID_2, align 4
  %20 = call i32 @strncmp(i32 %18, i32 %19, i32 4)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @DP_PANEL_MODE_SPECIAL, align 4
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %14
  br label %37

25:                                               ; preds = %9
  %26 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %27 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DP_VGA_LVDS_CONVERTER_ID_3, align 4
  %31 = call i32 @strncmp(i32 %29, i32 %30, i32 4)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @DP_PANEL_MODE_SPECIAL, align 4
  store i32 %34, i32* %2, align 4
  br label %48

35:                                               ; preds = %25
  br label %37

36:                                               ; preds = %9
  br label %37

37:                                               ; preds = %36, %35, %24
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %40 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @DP_PANEL_MODE_EDP, align 4
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @DP_PANEL_MODE_DEFAULT, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %44, %33, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
