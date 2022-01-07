; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.omap_dss_device*, i32, i32, %struct.panel_drv_data*)*, i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }
%struct.panel_drv_data = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"update %d, %d, %d x %d\0A\00", align 1
@dsicm_framedone_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32, i32, i32, i32)* @dsicm_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_update(%struct.omap_dss_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.panel_drv_data*, align 8
  %13 = alloca %struct.omap_dss_device*, align 8
  %14 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %16 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %15)
  store %struct.panel_drv_data* %16, %struct.panel_drv_data** %12, align 8
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %18 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %17, i32 0, i32 9
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %18, align 8
  store %struct.omap_dss_device* %19, %struct.omap_dss_device** %13, align 8
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %21 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %20, i32 0, i32 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %30 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %33 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %36, align 8
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %39 = call i32 %37(%struct.omap_dss_device* %38)
  %40 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %41 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %5
  br label %105

45:                                               ; preds = %5
  %46 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %47 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %105

51:                                               ; preds = %45
  %52 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %53 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %54 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %58 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dsicm_set_update_window(%struct.panel_drv_data* %52, i32 0, i32 0, i32 %56, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %105

65:                                               ; preds = %51
  %66 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %67 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %72 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %77 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %76, i32 0, i32 3
  %78 = call i32 @msecs_to_jiffies(i32 250)
  %79 = call i32 @schedule_delayed_work(i32* %77, i32 %78)
  %80 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %81 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %80, i32 0, i32 2
  %82 = call i32 @atomic_set(i32* %81, i32 1)
  br label %101

83:                                               ; preds = %70, %65
  %84 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %85 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32 (%struct.omap_dss_device*, i32, i32, %struct.panel_drv_data*)*, i32 (%struct.omap_dss_device*, i32, i32, %struct.panel_drv_data*)** %88, align 8
  %90 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %91 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %92 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @dsicm_framedone_cb, align 4
  %95 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %96 = call i32 %89(%struct.omap_dss_device* %90, i32 %93, i32 %94, %struct.panel_drv_data* %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  br label %105

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %100, %75
  %102 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %103 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  store i32 0, i32* %6, align 4
  br label %118

105:                                              ; preds = %99, %64, %50, %44
  %106 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %107 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %110, align 8
  %112 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %113 = call i32 %111(%struct.omap_dss_device* %112)
  %114 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %115 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %105, %101
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_set_update_window(%struct.panel_drv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
