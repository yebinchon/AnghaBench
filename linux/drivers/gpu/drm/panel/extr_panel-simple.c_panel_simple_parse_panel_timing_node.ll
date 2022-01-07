; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_parse_panel_timing_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_parse_panel_timing_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.panel_simple = type { %struct.TYPE_2__, %struct.panel_desc* }
%struct.TYPE_2__ = type { i32 }
%struct.panel_desc = type { i32, i32, %struct.display_timing* }
%struct.display_timing = type { i64 }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Reject override mode: panel has a fixed mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Reject override mode: no timings specified\0A\00", align 1
@hactive = common dso_local global i32 0, align 4
@hfront_porch = common dso_local global i32 0, align 4
@hback_porch = common dso_local global i32 0, align 4
@hsync_len = common dso_local global i32 0, align 4
@vactive = common dso_local global i32 0, align 4
@vfront_porch = common dso_local global i32 0, align 4
@vback_porch = common dso_local global i32 0, align 4
@vsync_len = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Reject override mode: No display_timing found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.panel_simple*, %struct.display_timing*)* @panel_simple_parse_panel_timing_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panel_simple_parse_panel_timing_node(%struct.device* %0, %struct.panel_simple* %1, %struct.display_timing* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.panel_simple*, align 8
  %6 = alloca %struct.display_timing*, align 8
  %7 = alloca %struct.panel_desc*, align 8
  %8 = alloca %struct.videomode, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.display_timing*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.panel_simple* %1, %struct.panel_simple** %5, align 8
  store %struct.display_timing* %2, %struct.display_timing** %6, align 8
  %11 = load %struct.panel_simple*, %struct.panel_simple** %5, align 8
  %12 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %11, i32 0, i32 1
  %13 = load %struct.panel_desc*, %struct.panel_desc** %12, align 8
  store %struct.panel_desc* %13, %struct.panel_desc** %7, align 8
  %14 = load %struct.panel_desc*, %struct.panel_desc** %7, align 8
  %15 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %139

22:                                               ; preds = %3
  %23 = load %struct.panel_desc*, %struct.panel_desc** %7, align 8
  %24 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %139

34:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %123, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.panel_simple*, %struct.panel_simple** %5, align 8
  %38 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %37, i32 0, i32 1
  %39 = load %struct.panel_desc*, %struct.panel_desc** %38, align 8
  %40 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %36, %41
  br i1 %42, label %43, label %126

43:                                               ; preds = %35
  %44 = load %struct.panel_simple*, %struct.panel_simple** %5, align 8
  %45 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %44, i32 0, i32 1
  %46 = load %struct.panel_desc*, %struct.panel_desc** %45, align 8
  %47 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %46, i32 0, i32 2
  %48 = load %struct.display_timing*, %struct.display_timing** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %48, i64 %50
  store %struct.display_timing* %51, %struct.display_timing** %10, align 8
  %52 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %53 = load %struct.display_timing*, %struct.display_timing** %10, align 8
  %54 = load i32, i32* @hactive, align 4
  %55 = call i32 @PANEL_SIMPLE_BOUNDS_CHECK(%struct.display_timing* %52, %struct.display_timing* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %43
  %58 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %59 = load %struct.display_timing*, %struct.display_timing** %10, align 8
  %60 = load i32, i32* @hfront_porch, align 4
  %61 = call i32 @PANEL_SIMPLE_BOUNDS_CHECK(%struct.display_timing* %58, %struct.display_timing* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %99

63:                                               ; preds = %57
  %64 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %65 = load %struct.display_timing*, %struct.display_timing** %10, align 8
  %66 = load i32, i32* @hback_porch, align 4
  %67 = call i32 @PANEL_SIMPLE_BOUNDS_CHECK(%struct.display_timing* %64, %struct.display_timing* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %63
  %70 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %71 = load %struct.display_timing*, %struct.display_timing** %10, align 8
  %72 = load i32, i32* @hsync_len, align 4
  %73 = call i32 @PANEL_SIMPLE_BOUNDS_CHECK(%struct.display_timing* %70, %struct.display_timing* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %77 = load %struct.display_timing*, %struct.display_timing** %10, align 8
  %78 = load i32, i32* @vactive, align 4
  %79 = call i32 @PANEL_SIMPLE_BOUNDS_CHECK(%struct.display_timing* %76, %struct.display_timing* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %75
  %82 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %83 = load %struct.display_timing*, %struct.display_timing** %10, align 8
  %84 = load i32, i32* @vfront_porch, align 4
  %85 = call i32 @PANEL_SIMPLE_BOUNDS_CHECK(%struct.display_timing* %82, %struct.display_timing* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %89 = load %struct.display_timing*, %struct.display_timing** %10, align 8
  %90 = load i32, i32* @vback_porch, align 4
  %91 = call i32 @PANEL_SIMPLE_BOUNDS_CHECK(%struct.display_timing* %88, %struct.display_timing* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %95 = load %struct.display_timing*, %struct.display_timing** %10, align 8
  %96 = load i32, i32* @vsync_len, align 4
  %97 = call i32 @PANEL_SIMPLE_BOUNDS_CHECK(%struct.display_timing* %94, %struct.display_timing* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93, %87, %81, %75, %69, %63, %57, %43
  br label %123

100:                                              ; preds = %93
  %101 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %102 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.display_timing*, %struct.display_timing** %10, align 8
  %105 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %123

109:                                              ; preds = %100
  %110 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %111 = call i32 @videomode_from_timing(%struct.display_timing* %110, %struct.videomode* %8)
  %112 = load %struct.panel_simple*, %struct.panel_simple** %5, align 8
  %113 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %112, i32 0, i32 0
  %114 = call i32 @drm_display_mode_from_videomode(%struct.videomode* %8, %struct.TYPE_2__* %113)
  %115 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %116 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.panel_simple*, %struct.panel_simple** %5, align 8
  %119 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %117
  store i32 %122, i32* %120, align 8
  br label %126

123:                                              ; preds = %108, %99
  %124 = load i32, i32* %9, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %35

126:                                              ; preds = %109, %35
  %127 = load %struct.panel_simple*, %struct.panel_simple** %5, align 8
  %128 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i64 @WARN_ON(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = call i32 @dev_err(%struct.device* %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %19, %31, %136, %126
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PANEL_SIMPLE_BOUNDS_CHECK(%struct.display_timing*, %struct.display_timing*, i32) #1

declare dso_local i32 @videomode_from_timing(%struct.display_timing*, %struct.videomode*) #1

declare dso_local i32 @drm_display_mode_from_videomode(%struct.videomode*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
