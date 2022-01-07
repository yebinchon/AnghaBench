; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_get_non_edid_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_get_non_edid_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_simple = type { %struct.TYPE_8__*, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.drm_device*, %struct.drm_connector* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to add override mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_simple*)* @panel_simple_get_non_edid_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_simple_get_non_edid_modes(%struct.panel_simple* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_simple*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.panel_simple* %0, %struct.panel_simple** %3, align 8
  %9 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %10 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  store %struct.drm_connector* %12, %struct.drm_connector** %4, align 8
  %13 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %14 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %5, align 8
  %17 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %18 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %22 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %133

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %32 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %31, i32 0, i32 1
  %33 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %30, %struct.TYPE_9__* %32)
  store %struct.drm_display_mode* %33, %struct.drm_display_mode** %6, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %35 = icmp ne %struct.drm_display_mode* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = call i32 @drm_mode_probed_add(%struct.drm_connector* %37, %struct.drm_display_mode* %38)
  store i32 1, i32* %8, align 4
  br label %45

40:                                               ; preds = %29
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %36
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %51 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %58 = call i32 @panel_simple_get_timings_modes(%struct.panel_simple* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %49, %46
  %60 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %61 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %68 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %66, %59
  %74 = phi i1 [ false, %59 ], [ %72, %66 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ON(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %81 = call i32 @panel_simple_get_display_modes(%struct.panel_simple* %80)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %84 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %89 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %92 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %98 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %101 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %107 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %110 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %82
  %116 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %117 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %116, i32 0, i32 0
  %118 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %119 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = call i32 @drm_display_info_set_bus_formats(%struct.TYPE_10__* %117, i32* %121, i32 1)
  br label %123

123:                                              ; preds = %115, %82
  %124 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %125 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %130 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %123, %25
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @panel_simple_get_timings_modes(%struct.panel_simple*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @panel_simple_get_display_modes(%struct.panel_simple*) #1

declare dso_local i32 @drm_display_info_set_bus_formats(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
